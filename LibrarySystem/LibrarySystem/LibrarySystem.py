import requests
import connector
from datetime import date
from datetime import timedelta

def AddBook(database):
    ISBN = input("Enter the ISBN of the book (integer) : ")
    title = input("Enter the title of the book (string) : ")
    edition = input("Enter the edition of the book (integer) : ")
    year = input("Enter the year the book was published in (integer) : ")
    val = (ISBN, title, edition, year)

    try:
        cursor = database.cursor()
        cursor.execute(requests.addBookRequest, val)
        database.commit()
        print ("Adding the book was successful")
    except connector.Error as error :
        database.rollback()
        print("The book could not be added to database : {}".format(error))
    cursor.close()

def SearchForBook(database):
    searchTerm = input("Search term : ")
    val = ("%" + searchTerm + "%", )

    cursor = database.cursor()
    cursor.execute(requests.bookSearchRequest, val)

    result = cursor.fetchall()
    cursor.close()
    print("(ISBN, title, edition, year)")
    for row in result:
        print(row)

def AddBookCopy(database):
    ISBN = input("Enter the ISBN of the book (integer) : ")
    availability = input("Enter the availability of the book (0. unavailable, 1. available) : ")
    val = (ISBN, availability)
    try:
        cursor = database.cursor()
        cursor.execute(requests.addBookCopyRequest, val)
        database.commit()
        print ("Adding the book copy was successful")
    except connector.Error as error :
        database.rollback()
        print("The book copy could not be added to database : {}".format(error))
    cursor.close()

def GetBookCopies(database):
    title = input("Enter the title of the book (string): ")
    val = (title, )

    cursor = database.cursor()
    cursor.execute(requests.bookCopiesRequest, val)

    result = cursor.fetchall()
    cursor.close()
    print("(copyNo, ISBN, available)")
    for row in result:
        print(row)

def AddBorrower(database):
    borrowerName = input("Enter borrower name (string) : ")
    borrowerAdress = input("enter borrower adress (string) : ")

    val = (borrowerName, borrowerAdress)
    try:
        cursor = database.cursor()
        cursor.execute(requests.addBorrowerRequest, val)
        database.commit()
        print ("Adding the borrower was successful")
    except connector.Error as error :
        database.rollback()
        print("The borrower could not be added to database : {}".format(error))
    cursor.close()

def getLoanedCopies(database):
    date = input("Enter year (yyyy-mm-dd) : ")
    
    val = (date, )
    cursor = database.cursor()
    cursor.execute(requests.loanedBookCopiesRequest, val)

    result = cursor.fetchall()
    cursor.close()
    print("(copyNo, title, year)")
    for row in result:
        print(row)

def borrowBookCopy(database):
    maxBooks = 3
    name = input("Enter your name (string) : ")
    bookName = input("Enter the name of the book you want to check out (string) : ")
    today  = date.today()

    cursor = database.cursor()
    fourteenDays = timedelta(14)
    val = (bookName, today, today + fourteenDays, name)
    try:            
        cursor.execute(requests.borrowBookRequest, val)
        database.commit()
        print ("Borrowing the book was successful")
    except connector.Error as error :
        database.rollback()
        print("Borrowing the book was not successful : {}".format(error))
    cursor.close()

db = connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="tp2_plourdefalardeaulescieux")

choices = "0. Add a book\n1. Add book copy\n2. Add borrower\n3. Search for a book\n4. Get book copies"\
    +"\n5. Get Loaned Book Copies\n6. Borrow Book\nEnter exit to quit"

print(choices)
request = input("Choice : ")
while(request != "exit"):
    if (request == "0"):
        AddBook(db)
    elif (request == "1"):
        AddBookCopy(db)
    elif (request == "2"):
        AddBorrower(db)
    elif (request == "3"):
        SearchForBook(db)
    elif (request == "4"):
        GetBookCopies(db)
    elif (request == "5"):
        getLoanedCopies(db)
    elif (request == "6"):
        borrowBookCopy(db)

    request = input("Choice : ")