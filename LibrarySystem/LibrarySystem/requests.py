
addBookRequest = "INSERT INTO book (ISBN, title, edition, year) VALUES (%s, %s, %s, %s)"
addBookCopyRequest = "INSERT INTO bookcopy (ISBN, available) VALUES (%s, %s)"
addBorrowerRequest = "INSERT INTO borrower (borrowerName, borrowerAdress) VALUES (%s, %s)"
bookSearchRequest = "SELECT * FROM book WHERE title LIKE %s"
bookCopiesRequest = "SELECT bc.copyNo, bc.ISBN, bc.available FROM book b, bookcopy bc WHERE b.title = %s AND b.ISBN = bc.ISBN"
loanedBookCopiesRequest = "SELECT bc.copyNo, b.title, b.year FROM book b, bookcopy bc, bookloan bl "\
    +"WHERE %s BETWEEN bl.dateOut AND bl.dateDue AND bc.copyNo = bl.copyNo AND bc.ISBN = b.ISBN"
borrowerNoOfLoansRequest = "SELECT COUNT(copyNo) AS NumberOfBooks FROM borrower b, bookloan bl WHERE b.borrowerName = %s "\
   +"AND b.borrowerNO = bl.borrowerNo AND bl.dateDue > %s"
borrowBookRequest = "INSERT INTO bookloan (copyNo, dateOut, dateDue, borrowerNo) VALUES " \
    +"((SELECT MIN(bc.copyNo) FROM book b, bookcopy bc WHERE bc.available = 1 AND b.title = %s AND b.ISBN = bc.ISBN)" \
    +", %s, %s, (SELECT borrowerNo FROM borrower WHERE borrowerName = %s) )"


