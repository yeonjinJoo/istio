# Initialize a mysql db with a 'test' db and be able test productpage with it.
# mysql -h 127.0.0.1 -ppassword < mysqldb-init.sql

CREATE DATABASE test;
USE test;

CREATE TABLE `ratings` (
  `ReviewID` INT NOT NULL,
  `Rating` INT,
  PRIMARY KEY (`ReviewID`)
);
INSERT INTO ratings (ReviewID, Rating) VALUES (1, 5);
INSERT INTO ratings (ReviewID, Rating) VALUES (2, 4);

CREATE TABLE books (
  book_id INT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  isbn VARCHAR(30) NOT NULL,
  description_html TEXT NOT NULL
);

INSERT INTO books (book_id, title, isbn, description_html) VALUES
(1, 'The Comedy of Errors', '9780743484886',
 '<a href="https://en.wikipedia.org/wiki/The_Comedy_of_Errors">Wikipedia Summary</a>: The Comedy of Errors is one of William Shakespeare''s earliest plays. It is his shortest and one of his most farcical comedies, with a major part of the humour coming from slapstick and mistaken identity, in addition to puns and word play.'),
(2, 'Hamlet', '074347712X',
 '<a href="https://en.wikipedia.org/wiki/Hamlet">Wikipedia Summary</a>: The Tragedy of Hamlet, Prince of Denmark, often shortened to Hamlet (/ˈhæmlɪt/), is a tragedy written by William Shakespeare sometime between 1599 and 1601. It is Shakespeare''s longest play.'),
(3, 'Macbeth', '9780743482790',
 '<a href="https://en.wikipedia.org/wiki/Macbeth">Wikipedia Summary</a>: The Tragedy of Macbeth, often shortened to Macbeth (/məkˈbɛθ/), is a tragedy by William Shakespeare, estimated to have been first performed in 1606.[a] It dramatises the physically violent and damaging psychological effects of political ambitions and power.');