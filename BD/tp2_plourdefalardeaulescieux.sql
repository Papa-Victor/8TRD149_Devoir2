-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2019 at 04:19 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp2_plourdefalardeaulescieux`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `ISBN` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `edition` int(10) UNSIGNED NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ISBN`),
  UNIQUE KEY `ISBN_UNIQUE` (`ISBN`),
  UNIQUE KEY `title_UNIQUE` (`title`(255)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `title`, `edition`, `year`) VALUES
(156132, 'My First Book', 5, 1936),
(10026274, 'Extremely Loud and Incredibly Close', 1, 1931),
(10473662, 'Don\'t Bend Over in the Garden, Granny, You Know Them Taters Got Eyes', 1, 1930),
(11524160, 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', 1, 1943),
(11633650, 'the Particular Sadness of Lemon Cake', 1, 2000),
(11775668, 'Well-Behaved Women Seldom Make History', 1, 1997),
(11822367, 'Send More Idiots', 1, 1904),
(13172789, 'Nostradamus Ate My Hamster', 1, 1975),
(14641702, 'Tinker, Tailor, Soldier, Spy', 1, 1925),
(17603912, 'The Effect of Gamma Rays on Man-in-the-Moon Marigolds', 1, 1906),
(18572283, 'The Devil Wears Prada', 1, 2004),
(18772124, 'The Man Who Was Thursday: A Nightmare', 1, 1963),
(18897729, 'All Quiet on the Western Front', 1, 1935),
(20722517, 'One Hundred Years of Solitude', 1, 1909),
(22342301, 'I Have No Mouth and I Must Scream', 1, 2000),
(23170196, 'The Unbearable Lightness of Being', 1, 1985),
(23508706, 'When You Are Engulfed in Flames', 1, 2010),
(24562594, 'The Lone Ranger and Tonto Fistfight in Heaven', 1, 2000),
(24905123, 'If on a Winter\'s Night a Traveller', 1, 1934),
(25890836, 'I Capture the Castle', 1, 1986),
(26770519, 'Zen and the Art of Motorcycle Maintenance: An Inquiry Into Values', 1, 1947),
(26799126, 'Are You There, Vodka? It\'s Me, Chelsea', 1, 1922),
(29409437, 'Neverwhere', 1, 1956),
(29992729, 'I Still Miss My Man But My Aim Is Getting Better', 1, 1943),
(33394467, 'The Zombie Survival Guide: Complete Protection from the Living Dead', 1, 1983),
(35700201, 'The Importance of Being Earnest', 1, 1976),
(36481724, 'No Country For Old Men', 1, 1931),
(36690904, 'An Arsonist\'s Guide to Writers\' Homes in New England', 1, 1961),
(37039878, 'The Spy Who Came In from the Cold', 1, 1969),
(38149366, 'The Long Dark Tea-Time of the Soul', 1, 1914),
(38401616, 'Fear and Loathing in Las Vegas', 1, 1953),
(38548668, 'John Dies at the End', 1, 1909),
(41371466, 'The Curious Incident of the Dog in the Night-Time', 1, 1979),
(43488136, 'Me Talk Pretty One Day', 1, 1935),
(45452449, 'Of Mice and Men', 1, 1942),
(47390462, 'How to Shit in the Woods: An Environmentally Sound Approach to a Lost Art', 1, 1983),
(47706971, 'How to Talk About Books You Haven\'t Read', 1, 1928),
(49512337, 'The Restaurant at the End of the Universe', 1, 1975),
(51372721, 'Stop Dressing Your Six-Year-Old Like a Skank: A Slightly Tarnished Southern Belle\'s Words of Wisdom', 1, 1907),
(52799382, 'Do Androids Dream of Electric Sheep?', 1, 1973),
(53001908, 'The Earth, My Butt, and Other Big Round Things', 1, 1922),
(53251929, 'The Man Without Qualities', 1, 1980),
(54495733, 'The Guernsey Literary and Potato Peel Pie Society', 1, 1933),
(54956525, 'For Whom the Bell Tolls', 1, 1974),
(55334053, 'A Confederacy of Dunces', 1, 1917),
(57101159, 'The Man Who Mistook His Wife for a Hat and Other Clinical Tales', 1, 1938),
(58209935, 'The Hitchhiker\'s Guide to the Galaxy', 1, 2008),
(60725861, 'The Grapes of Wrath', 1, 1971),
(63722691, 'How to Lose Friends and Alienate People', 1, 1967),
(63830630, 'And Then There Were None', 1, 1932),
(64149464, 'The Electric Kool-Aid Acid Test', 1, 1960),
(64205116, 'The Gordonston Ladies Dog Walking Club', 1, 1998),
(64494248, 'Cloudy With a Chance of Meatballs', 1, 1978),
(65594252, 'In God We Trust: All Others Pay Cash', 1, 1960),
(65824440, 'To Kill a Mockingbird', 1, 1900),
(66269722, 'I Was Told There\'d Be Cake', 1, 1948),
(66493191, 'The Silence of the Lambs', 1, 1930),
(67348677, 'As I Lay Dying', 1, 1998),
(68676944, 'A Heartbreaking Work of Staggering Genius', 1, 1962),
(69111021, 'Sense and Sensibility and Sea Monsters', 1, 1991),
(70066210, 'Brave New World', 1, 1948),
(70174657, 'Midnight in the Garden of Good and Evil: A Savannah Story', 1, 1971),
(70413094, 'Another Bullshit Night in Suck City', 1, 1929),
(70445485, 'Hard-Boiled Wonderland and the End of the World', 1, 1935),
(70568046, 'The Perks of Being a Wallflower', 1, 2008),
(70737154, 'The Lust Lizard of Melancholy Cove', 1, 1937),
(70920498, 'Love in the Time of Cholera', 1, 2005),
(71742899, 'A Clockwork Orange', 1, 1934),
(73738012, 'What to Say When You Talk to Yourself', 1, 1954),
(74229475, 'Pride and Prejudice and Zombies', 1, 1918),
(74843713, 'The Hollow Chocolate Bunnies of the Apocalypse', 1, 1921),
(75737419, 'The Lord of the Rings', 1, 1903),
(76510972, 'A Thousand Splendid Suns', 1, 1910),
(77800151, 'Dogshit Saved My Life', 1, 1963),
(77825120, 'Their Eyes Were Watching God', 1, 1900),
(78146652, 'Don\'t Pee on My Leg and Tell Me It\'s Raining: America\'s Toughest Family Court Judge Speaks Out', 1, 2000),
(78455438, 'A Short History of Tractors in Ukrainian', 1, 1912),
(79623557, 'The Sound and the Fury', 1, 1971),
(82531446, 'Where the Wild Things Are', 1, 1957),
(82611330, 'Captain Underpants and the Perilous Plot of Professor Poopypants', 1, 2005),
(82638242, 'There\'s a Wocket in My Pocket!', 1, 1929),
(84711123, 'Eats, Shoots & Leaves: The Zero Tolerance Approach to Punctuation', 1, 1949),
(85273876, 'Something Wicked This Way Comes', 1, 1983),
(88319942, 'The Moon is a Harsh Mistress', 1, 1942),
(88749714, 'Tequila Makes Her Clothes Fall Off', 1, 1938),
(89934950, 'The Catcher in the Rye', 1, 1904),
(90117055, 'So Long, and Thanks for All the Fish', 1, 1908),
(94502125, 'Life, the Universe and Everything', 1, 1933),
(94632193, 'I Hope They Serve Beer in Hell', 1, 1942),
(96478058, 'A Wrinkle in Time', 1, 1939),
(97316790, 'She Got Up Off The Couch: And Other Heroic Acts From Mooreland, Indiana', 1, 2006),
(97892953, 'This Is Not a Novel', 1, 1989),
(99287393, 'I Am America', 1, 1982);

-- --------------------------------------------------------

--
-- Table structure for table `bookcopy`
--

DROP TABLE IF EXISTS `bookcopy`;
CREATE TABLE IF NOT EXISTS `bookcopy` (
  `copyNo` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` int(11) NOT NULL,
  `available` tinyint(4) NOT NULL,
  PRIMARY KEY (`copyNo`),
  UNIQUE KEY `copyNo_UNIQUE` (`copyNo`),
  KEY `ISBN_idx` (`ISBN`)
) ENGINE=InnoDB AUTO_INCREMENT=2003 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookcopy`
--

INSERT INTO `bookcopy` (`copyNo`, `ISBN`, `available`) VALUES
(1000, 52799382, 1),
(1001, 85273876, 1),
(1002, 85273876, 1),
(1003, 58209935, 1),
(1004, 58209935, 1),
(1005, 74229475, 1),
(1006, 74229475, 1),
(1007, 66269722, 1),
(1008, 66269722, 1),
(1009, 41371466, 1),
(1010, 41371466, 1),
(1011, 74843713, 1),
(1012, 84711123, 1),
(1013, 65824440, 1),
(1014, 65824440, 1),
(1015, 26799126, 1),
(1016, 26799126, 1),
(1017, 23170196, 1),
(1018, 70174657, 1),
(1019, 70568046, 1),
(1020, 53001908, 1),
(1021, 53001908, 1),
(1022, 64494248, 1),
(1023, 64494248, 1),
(1024, 51372721, 1),
(1025, 51372721, 1),
(1026, 43488136, 1),
(1027, 43488136, 1),
(1028, 20722517, 1),
(1029, 38149366, 1),
(1030, 38149366, 1),
(1031, 38548668, 1),
(1032, 38548668, 1),
(1033, 82531446, 1),
(1034, 82531446, 1),
(1035, 68676944, 1),
(1036, 36690904, 1),
(1037, 53251929, 1),
(1038, 11524160, 1),
(1039, 70413094, 1),
(1040, 63722691, 1),
(1041, 64205116, 1),
(1042, 64205116, 1),
(1043, 90117055, 1),
(1044, 90117055, 1),
(1045, 33394467, 1),
(1046, 71742899, 1),
(1047, 71742899, 1),
(1048, 99287393, 1),
(1049, 99287393, 1),
(1050, 29409437, 1),
(1051, 29409437, 1),
(1052, 10026274, 1),
(1053, 22342301, 1),
(1054, 22342301, 1),
(1055, 18572283, 1),
(1056, 23508706, 1),
(1057, 76510972, 1),
(1058, 76510972, 1),
(1059, 29992729, 1),
(1060, 77825120, 1),
(1061, 54495733, 1),
(1062, 54495733, 1),
(1063, 55334053, 1),
(1064, 55334053, 1),
(1065, 60725861, 1),
(1066, 60725861, 1),
(1067, 66493191, 1),
(1068, 96478058, 1),
(1069, 88749714, 1),
(1070, 57101159, 1),
(1071, 54956525, 1),
(1072, 54956525, 1),
(1073, 26770519, 1),
(1074, 26770519, 1),
(1075, 38401616, 1),
(1076, 38401616, 1),
(1077, 47390462, 1),
(1078, 47390462, 1),
(1079, 70920498, 1),
(1080, 70920498, 1),
(1081, 11822367, 1),
(1082, 11822367, 1),
(1083, 24905123, 1),
(1084, 49512337, 1),
(1085, 70066210, 1),
(1086, 18772124, 1),
(1087, 18772124, 1),
(1088, 36481724, 1),
(1089, 36481724, 1),
(1090, 18897729, 1),
(1091, 79623557, 1),
(1092, 79623557, 1),
(1093, 89934950, 1),
(1094, 37039878, 1),
(1095, 94632193, 1),
(1096, 64149464, 1),
(1097, 24562594, 1),
(1098, 63830630, 1),
(1099, 73738012, 1),
(1100, 78146652, 1),
(1101, 78146652, 1),
(1102, 88319942, 1),
(1103, 88319942, 1),
(1104, 11775668, 1),
(1105, 11775668, 1),
(1106, 11633650, 1),
(1107, 13172789, 1),
(1108, 75737419, 1),
(1109, 75737419, 1),
(1110, 65594252, 1),
(1111, 65594252, 1),
(1112, 97316790, 1),
(1113, 97316790, 1),
(1114, 45452449, 1),
(1115, 45452449, 1),
(1116, 67348677, 1),
(1117, 94502125, 1),
(1118, 94502125, 1),
(1119, 17603912, 1),
(1120, 17603912, 1),
(1121, 70445485, 1),
(1122, 25890836, 1),
(1123, 25890836, 1),
(1124, 97892953, 1),
(1125, 10473662, 1),
(1126, 10473662, 1),
(1127, 69111021, 1),
(1128, 69111021, 1),
(1129, 78455438, 1),
(1130, 78455438, 1),
(1131, 82611330, 1),
(1132, 47706971, 1),
(1133, 47706971, 1),
(1134, 35700201, 1),
(1135, 35700201, 1),
(1136, 14641702, 1),
(1137, 14641702, 1),
(1138, 77800151, 1),
(1139, 70737154, 1),
(1140, 82638242, 1),
(1141, 82638242, 1),
(2000, 10026274, 0),
(2002, 82638242, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookloan`
--

DROP TABLE IF EXISTS `bookloan`;
CREATE TABLE IF NOT EXISTS `bookloan` (
  `copyNo` int(11) NOT NULL,
  `dateOut` datetime NOT NULL,
  `dateDue` datetime NOT NULL,
  `borrowerNo` int(11) NOT NULL,
  KEY `copyNo_foreign_key_idx` (`copyNo`),
  KEY `borrowerNo_foreign_key_idx` (`borrowerNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
CREATE TABLE IF NOT EXISTS `borrower` (
  `borrowerNo` int(11) NOT NULL AUTO_INCREMENT,
  `borrowerName` mediumtext NOT NULL,
  `borrowerAdress` longtext NOT NULL,
  PRIMARY KEY (`borrowerNo`),
  UNIQUE KEY `borrowerNo_UNIQUE` (`borrowerNo`),
  UNIQUE KEY `borrowerName_UNIQUE` (`borrowerName`(50))
) ENGINE=InnoDB AUTO_INCREMENT=989 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`borrowerNo`, `borrowerName`, `borrowerAdress`) VALUES
(103, 'Afton Schweigert', '484 Old Hickory Court, Slaughterville, Oklahoma, 74699-2063, US, (539) 463-7314'),
(170, 'Muoi Aguila', '5195 Bright Concession, Brimstone, Quebec, J6N-1G4, CA, (438) 323-3206'),
(172, 'Willy Corker', '5048 Emerald Village, Two Chestnut, Maryland, 21507-0313, US, (301) 542-0241'),
(209, 'Hildegard Philipps', '9817 Grand Centre, Cardtown, South Carolina, 29245-6230, US, (843) 252-1339'),
(211, 'Shanna Korte', '3231 Round Cape, Alabama Village, Vermont, 05551-3544, US, (802) 662-8007'),
(232, 'Tenisha Chiodo', '1323 Rocky Bear Swale, Fivemile, Wisconsin, 54698-1727, US, (715) 934-5777'),
(240, 'Raven Kemmer', '7349 Velvet River Ridge, Soapstick, Ohio, 45854-7315, US, (234) 563-4435'),
(247, 'Glen Divers', '2700 Middle Arbor, Hell Gate, Texas, 77828-9392, US, (940) 235-7957'),
(272, 'Brandon Cosme', '2859 Silver Maze, Whiskey Spring, Alberta, T2V-6N7, CA, (780) 045-4986'),
(277, 'Rosalva Stelling', '1011 Blue Autumn Limits, Troublesome, Quebec, G0W-3L6, CA, (418) 757-1698'),
(278, 'Karey Caston', '6099 Quaking Glen, Teakettle Junction, Indiana, 47594-2291, US, (574) 158-1320'),
(287, 'Kimberely Pilla', '1672 Misty Campus, Ideal, Louisiana, 70183-9947, US, (225) 051-6518'),
(288, 'Claris Venzon', '1316 Cozy Embers Link, Winneboujou, Yukon, Y3P-8I6, CA, (867) 672-7125'),
(304, 'Shari Moultrie', '7176 Heather Beacon Plaza, Latexo, New Brunswick, E2I-1V3, CA, (506) 592-6366'),
(319, 'Doris Rothschild', '1636 Hazy Farms, Shiney Town, New Mexico, 88315-8453, US, (575) 713-7977'),
(390, 'Roseann Wynne', '1246 Tawny Vista, Badnation, Utah, 84657-6015, US, (385) 421-9537'),
(406, 'Earl Valliere', '3798 Gentle Port, Cheek, Maryland, 21444-8233, US, (301) 350-6470'),
(420, 'Joan Kitchell', '4 Cinder Wagon View, Lake Dick, Minnesota, 56227-0547, US, (218) 661-6477'),
(441, 'Modesta Pou', '3700 Crystal Oak Bend, Alta, California, 93629-6234, US, (714) 917-0274'),
(446, 'Octavio Lynn', '6468 Green Ledge, Savage, Illinois, 60973-1293, US, (309) 122-3220'),
(458, 'Albertina Zeiger', '3561 Hidden Autoroute, Cathlapotle, North Dakota, 58167-2354, US, (701) 689-8833'),
(490, 'Stuart Amoroso', '18 Thunder Log By-pass, Drip Rock, Manitoba, R6L-5H8, CA, (204) 548-5367'),
(516, 'Annamaria Bunde', '5577 Quiet Hills Carrefour, Cheeseville, South Carolina, 29014-9287, US, (864) 604-9522'),
(523, 'Lean Durrance', '3484 Fallen Freeway, Greasy Corner, New Brunswick, E0S-1K8, CA, (506) 922-6500'),
(552, 'Adam Rogge', '2742 Burning Passage, Michigan Bar, Rhode Island, 02834-3860, US, (401) 340-7958'),
(560, 'Sherryl Coppola', '5327 Little Bluff Cove, Sebewaing, Quebec, J6T-1B7, CA, (819) 387-2076'),
(589, 'Gino Bottorff', '7450 Sleepy Island, Lingerlost, Maine, 04797-2429, US, (207) 531-8862'),
(631, 'Evangelina Harps', '68 Umber Horse Acres, Agate, Newfoundland, A0Z-3Y4, CA, (709) 267-2045'),
(647, 'Marybeth Sebesta', '9852 Clear Avenue, Ah-Gwah-Ching, Virginia, 22229-9805, US, (276) 122-9154'),
(655, 'Jamee Mcmackin', '8611 Dewy Stead, Consumers, Oregon, 97356-1661, US, (503) 570-8122'),
(692, 'Arianne Setzer', '236 Harvest Sky Diversion, Kremlin, Ontario, L7A-1J8, CA, (248) 256-3744'),
(713, 'Madison Sherrer', '4030 Dusty Goose Route, Buttzville, Oregon, 97936-0862, US, (541) 101-0554'),
(729, 'Emmie Belmont', '1707 Merry Parade, Sizerock, Newfoundland, A1G-0H2, CA, (709) 873-5528'),
(738, 'Alex Pixler', '347 Noble Dell, Pie Town, Nunavut, X5Y-1F8, CA, (867) 288-6655'),
(761, 'Dorthy Dean', '9081 Broad Mews, Oketeyeconne, Louisiana, 71148-3068, US, (318) 627-3236'),
(769, 'Ina Burrill', '5008 Honey Mountain Glade, Brass Castle, Wyoming, 82200-4061, US, (307) 404-1464'),
(783, 'Paulita Scott', '755 Sunny Pine Villas, Governor Run, Minnesota, 56219-7052, US, (651) 201-8977'),
(825, 'Shemeka Nodine', '7169 Stony Manor, Unfried, New Jersey, 07486-4521, US, (551) 341-8426'),
(854, 'Lucius Leonard', '9233 Indian Grove, Vocation, Ontario, N1H-4G5, CA, (519) 835-1264'),
(870, 'Helaine Ingram', '6832 Easy Nectar Pike, Nasketucket, Nunavut, X2Q-7Y4, CA, (867) 841-3728'),
(873, 'Leoma Gillett', '7995 Colonial Fawn Isle, Black Wolf, Ontario, L1Q-5C2, CA, (807) 826-7413'),
(874, 'Althea Sandage', '3486 Cotton Lake Estates, Holy Cross, Wyoming, 82025-6668, US, (307) 291-3388'),
(894, 'Rosana Uphoff', '8035 High Inlet, Gays Mills, Oklahoma, 73154-9329, US, (405) 080-9468'),
(915, 'Charline Muse', '7555 Silent Lane, Fawnskin, Illinois, 62481-0756, US, (224) 239-8701'),
(924, 'Antonetta Lenoir', '5285 Lazy Spring Lookout, Bald Head, Rhode Island, 02968-1533, US, (401) 184-3246'),
(959, 'Yer Futch', '1667 Shady Barn Mall , Gap in Knob, Wisconsin, 53468-2125, US, (414) 291-7039'),
(962, 'Tod Kerby', '5685 Rustic Towers, Charity, Alberta, T8Z-1G8, CA, (780) 646-9363'),
(964, 'Hal Futrell', '955 Red Nook, Dodge Hollow, Colorado, 81620-2557, US, (720) 916-0285'),
(973, 'Lyndsey Bloch', '1184 Golden Heath, Stargo, Michigan, 49469-4402, US, (906) 641-1870'),
(987, 'Eliseo Karls', '4231 Amber Impasse, Tiger, Massachusetts, 01674-7918, US, (339) 011-6425'),
(988, 'Bob Perron', '15 chemin du sentier');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookcopy`
--
ALTER TABLE `bookcopy`
  ADD CONSTRAINT `ISBN_foreign_key` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookloan`
--
ALTER TABLE `bookloan`
  ADD CONSTRAINT `borrowerNo_foreign_key` FOREIGN KEY (`borrowerNo`) REFERENCES `borrower` (`borrowerNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `copyNo_foreign_key` FOREIGN KEY (`copyNo`) REFERENCES `bookcopy` (`copyNo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
