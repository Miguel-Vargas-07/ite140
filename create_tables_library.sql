DROP TABLE IF EXISTS library.book_author;  
DROP TABLE IF EXISTS library.loans;  
DROP TABLE IF EXISTS library.books;  
DROP TABLE IF EXISTS library.author;  
DROP TABLE IF EXISTS library.library_card;  
DROP TABLE IF EXISTS library.user;  





CREATE TABLE library.user (  
    user_id SERIAL  PRIMARY KEY,  
    first_name VARCHAR(255),  
    last_name VARCHAR(255),  
    email VARCHAR(255),  
    phone VARCHAR(255),  
    user_address VARCHAR(255),  
    username VARCHAR(255),  
    user_password VARCHAR(255)
); 
CREATE TABLE library.library_card (  
    card_id SERIAL  PRIMARY KEY,  
    user_id INT UNIQUE,  
    issue_date DATE,  
    expiration_date DATE,
    FOREIGN KEY (user_id) REFERENCES library.user(user_id)  
); 

CREATE TABLE library.books(  
    book_id SERIAL PRIMARY KEY,  
    book_name VARCHAR(255),  
    book_genre VARCHAR(255),  
    available BOOLEAN  
);  
CREATE TABLE library.loans(  
    checkout_id VARCHAR(255) PRIMARY KEY,  
    available BOOLEAN,  
    first_name VARCHAR(255),  
    book_id INT,  
    takeout_date DATE,  
    due_date DATE,  
    FOREIGN KEY (book_id) REFERENCES library.books (book_id)  
); 

CREATE TABLE library.author(  
    author_name VARCHAR(255) PRIMARY KEY,  
    award VARCHAR(255)  
);  

CREATE TABLE library.book_author(  
    book_id INT,  
    author_name VARCHAR(255),  
    PRIMARY KEY (book_id, author_name),  
    FOREIGN KEY (book_id) REFERENCES library.books(book_id) ON DELETE CASCADE,  
    FOREIGN KEY (author_name) REFERENCES library.author (author_name)  
);   


INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (1, 'Charlotte', 'Thompson', 'charlotte.thompson@example.com', '100-200-3000', '101 Cherry Lane, Springfield, IL', 'charlotte', 'hashed_password_1');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (2, 'Abigail', 'Jones', 'abigail.jones@example.com', '110-220-3300', '202 Birch Street, Springfield, IL', 'abigailj', 'hashed_password_2');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (3, 'Harper', 'Smith', 'harper.smith@example.com', '120-230-3400', '303 Ash Avenue, Springfield, IL', 'harpers', 'hashed_password_3');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (4, 'Emily', 'Johnson', 'emily.johnson@example.com', '130-240-3500', '404 Maple Drive, Springfield, IL', 'emilyj', 'hashed_password_4');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (5, 'William', 'Brown', 'william.brown@example.com', '140-250-3600', '505 Cedar Road, Springfield, IL', 'williamb', 'hashed_password_5');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (6, 'Benjamin', 'Davis', 'benjamin.davis@example.com', '150-260-3700', '606 Palm Street, Springfield, IL', 'benjamind', 'hashed_password_6');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (7, 'Ethan', 'Garcia', 'ethan.garcia@example.com', '160-270-3800', '707 Walnut Lane, Springfield, IL', 'ethang', 'hashed_password_7');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (8, 'Elijah', 'Martinez', 'elijah.martinez@example.com', '170-280-3900', '808 Pine Street, Springfield, IL', 'elijahn', 'hashed_password_8');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (9, 'Alexander', 'Martinez', 'alexander.martinez@example.com', '180-290-4000', '909 Cedar Lane, Springfield, IL', 'alexanderm', 'hashed_password_9');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (10, 'Daniel', 'Wilson', 'daniel.wilson@example.com', '190-300-4100', '1010 Maple Lane, Springfield, IL', 'danielw', 'hashed_password_10');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (11, 'Tyrone', 'Clark', 'tyrone.clark@example.com', '200-310-4200', '1111 Elm Street, Springfield, IL', 'tyronec', 'hashed_password_11');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (12, 'Oliver', 'Rodriguez', 'oliver.rodriguez@example.com', '210-320-4300', '1212 Ash Drive, Springfield, IL', 'oliverr', 'hashed_password_12');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (13, 'Olivia', 'Lewis', 'olivia.lewis@example.com', '220-330-4400', '1313 Oak Street, Springfield, IL', 'olivial', 'hashed_password_13');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (14, 'Emma', 'Hall', 'emma.hall@example.com', '230-340-4500', '1414 Birch Avenue, Springfield, IL', 'emmah', 'hashed_password_14');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (15, 'Mia', 'Young', 'mia.young@example.com', '240-350-4600', '1515 Palm Lane, Springfield, IL', 'miay', 'hashed_password_15');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (16, 'Isabella', 'Hernandez', 'isabella.hernandez@example.com', '250-360-4700', '1616 Maple Street, Springfield, IL', 'isabellah', 'hashed_password_16');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (17, 'Harriet', 'King', 'harriet.king@example.com', '260-370-4800', '1717 Cedar Drive, Springfield, IL', 'harrietk', 'hashed_password_17');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (18, 'Ava', 'Wright', 'ava.wright@example.com', '270-380-4900', '1818 Oak Lane, Springfield, IL', 'avaw', 'hashed_password_18');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (19, 'Evelyn', 'Scott', 'evelyn.scott@example.com', '280-390-5000', '1919 Pine Avenue, Springfield, IL', 'evelyns', 'hashed_password_19');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (20, 'Liam', 'Green', 'liam.green@example.com', '290-400-5100', '2020 Ash Street, Springfield, IL', 'liamg', 'hashed_password_20');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (21, 'Micheal', 'Adams', 'micheal.adams@example.com', '300-410-5200', '2121 Elm Street, Springfield, IL', 'micheala', 'hashed_password_21');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (22, 'James', 'Baker', 'james.baker@example.com', '310-420-5300', '2222 Oak Road, Springfield, IL', 'jamesb', 'hashed_password_22');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (23, 'Alexandra', 'Nelson', 'alexandra.nelson@example.com', '320-430-5400', '2323 Maple Drive, Springfield, IL', 'alexandran', 'hashed_password_23');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (24, 'Victor', 'Carter', 'victor.carter@example.com', '330-440-5500', '2424 Pine Lane, Springfield, IL', 'victorc', 'hashed_password_24');  
INSERT INTO library.user (user_id, first_name, last_name, email, phone, user_address, username, user_password) VALUES (25, 'Noah', 'Mitchell', 'noah.mitchell@example.com', '340-450-5600', '2525 Bamboo Street, Springfield, IL', 'noahm', 'hashed_password_25');  

INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (1, 1, '01/12/2023', '01/12/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (2, 2, '01/15/2023', '01/15/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (3, 3, '01/20/2023', '01/20/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (4, 4, '01/25/2023', '01/25/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (5, 5, '01/30/2023', '01/30/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (6, 6, '02/02/2023', '02/02/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (7, 7, '02/05/2023', '02/05/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (8, 8, '02/10/2023', '02/10/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (9, 9, '02/15/2023', '02/15/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (10, 10, '02/20/2023', '02/20/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (11, 11, '02/25/2023', '02/25/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (12, 12, '03/01/2023', '03/01/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (13, 13, '03/05/2023', '03/05/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (14, 14, '03/10/2023', '03/10/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (15, 15, '03/15/2023', '03/15/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (16, 16, '03/20/2023', '03/20/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (17, 17, '03/25/2023', '03/25/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (18, 18, '03/30/2023', '03/30/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (19, 19, '04/02/2023', '04/02/2026');  
INSERT INTO library.library_card (card_id, user_id, issue_date, expiration_date) VALUES (20, 20, '04/05/2023', '04/05/2026'); 

INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (1, 'Dreams of Tomorrow', 'Self-Help', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (2, 'Secrets of the Stars', 'Historical Fiction', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (3, 'Mysteries of the Sea', 'Thriller', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (4, 'The Enchanted Forest', 'Science Fiction', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (5, 'Shadows of the Moon', 'Fantasy', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (6, 'Lost in Time', 'Self-Help', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (7, 'Whispers of the Wind', 'Historical Fiction', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (8, 'The Midnight Garden', 'Biography', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (9, 'The Enchanted Isle', 'Science Fiction', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (10, 'Whispers of the Heart', 'Historical Fiction', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (11, 'Dreams of Tomorrow', 'Self-Help', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (12, 'The Midnight Garden', 'Biography', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (13, 'The Forgotten City', 'Young Adult', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (14, 'Echoes of Eternity', 'Science Fiction', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (15, 'The Hidden Path', 'Horror', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (16, 'The Midnight Garden', 'Biography', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (17, 'The Forgotten City', 'Young Adult', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (18, 'Whispers in the Wind', 'Historical Fiction', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (19, 'The Hidden Path', 'Horror', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (20, 'Mysteries of the Sea', 'Thriller', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (21, 'The Hidden Path', 'Horror', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (22, 'The Forgotten City', 'Young Adult', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (23, 'The Enchanted Forest', 'Science Fiction', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (24, 'The Secret Garden', 'Fantasy', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (25, 'Whispers of the Heart', 'Historical Fiction', false);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (26, 'Mystic Waters', 'Dystopian', true);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (27, 'Lost in Time', 'Young Adult', true);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (28, 'Shadows of the Night', 'Romance', true);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (29, 'Mystic Waters', 'Dystopian', true);  
INSERT INTO library.books (book_id, book_name, book_genre, available) VALUES (30, 'Shadows of the Night', 'Mystery', true);  


insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ( 'CDEF9012', false, 'Charlotte', 1, '11/3/2024', '9/10/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('PQRS3456', false, 'Abigail', 2, '6/5/2024', '4/7/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('UVWX1234', false, 'Harper', 3, '2/23/2024', '8/11/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('MNOP3456', false, 'Emily', 4, '2/29/2024', '10/23/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('PQRA3456', false, 'William', 5, '7/19/2024', '12/18/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('TUVW7890', false, 'Benjamin', 6, '2/25/2024', '5/18/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('MNOP3426', false, 'Ethan', 7, '2/13/2024', '4/20/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('JKLM1234', false, 'Elijah', 8, '6/26/2024', '6/30/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('STUV5678', false, 'Alexander', 9, '9/20/2024', '5/3/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('CDEF9212', false, 'Daniel', 10, '10/15/2024', '7/19/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ( 'YZAB5678', false, 'Tyrone', 11, '3/12/2024', '2/15/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ( 'STUV5638', false, 'Oliver', 12, '10/2/2024', '12/27/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ( 'EFGQ5678', false, 'Olivia', 13, '7/4/2024', '9/15/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('OPQR4234', false, 'Emma', 14, '4/13/2024', '6/14/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ( 'TUVW7891', false, 'Mia', 15, '3/7/2024', '10/14/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('OPAR1234', false, 'Isabella', 16, '10/15/2024', '10/10/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ( 'EFGH5678', false, 'Harriet', 17, '3/5/2024', '1/26/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('OPQR1234', false, 'Ava', 18, '1/18/2025', '10/12/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('LMNO9012', false, 'Evelyn', 19, '6/13/2024', '1/17/2025');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('CDEF9312', false, 'Liam', 20, '11/24/2024', '4/12/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('PQWS3456', false, 'Micheal', 21, '3/28/2024', '9/17/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ( 'YZAB5878', false, 'James', 22, '4/2/2024', '2/9/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('GHIJ3456', false, 'Alexandra', 23, '7/22/2024', '2/9/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ( 'DEFG1234', false, 'Victor', 24, '12/7/2024', '12/11/2024');
insert into library.loans (checkout_id, available, first_name, book_id, takeout_date, due_date) values ('UVWX1434', false,'Noah', 25, '1/10/2025', '7/23/2024');


INSERT INTO library.author (author_name, award) VALUES ('Tony Stark', 'Best Fiction Award');  
INSERT INTO library.author (author_name, award) VALUES ('David Lee', 'Romance Book Prize');  
INSERT INTO library.author (author_name, award) VALUES ('John Johnson', 'Young Adult Fiction Trophy');  
INSERT INTO library.author (author_name, award) VALUES ('Amanda Lopez', 'Children''s Book Excellence Award');  
INSERT INTO library.author (author_name, award) VALUES ('Andrew Nguyen', 'Historical Fiction Honor');  
INSERT INTO library.author (author_name, award) VALUES ('Tyler Ramirez', 'Cookbook of the Century Award');  
INSERT INTO library.author (author_name, award) VALUES ('Christopher White', 'Most Inspirational Biography Recognition');  
INSERT INTO library.author (author_name, award) VALUES ('Emily Brown', 'Young Adult Fiction Trophy');  
INSERT INTO library.author (author_name, award) VALUES ('Jessica Martinez', 'Cookbook of the Century Award');  
INSERT INTO library.author (author_name, award) VALUES ('Michael Brown', 'Fantasy Novel of the Year');  
INSERT INTO library.author (author_name, award) VALUES ('Brian Thomas', 'Outstanding Mystery Novel Award');  
INSERT INTO library.author (author_name, award) VALUES ('Jessica Polk', 'Outstanding Mystery Novel Award');  
INSERT INTO library.author (author_name, award) VALUES ('Alice Black', 'Fantasy Novel of the Year');  
INSERT INTO library.author (author_name, award) VALUES ('Olivia Rodriguez', 'Thriller of the Decade Award');  
INSERT INTO library.author (author_name, award) VALUES ('Daniel Lee', 'Graphic Novel Achievement');  
INSERT INTO library.author (author_name, award) VALUES ('Michael Davis', 'Sci-Fi Masterpiece Award');  
INSERT INTO library.author (author_name, award) VALUES ('Brian Brown', 'Historical Fiction Honor');  



 
INSERT INTO library.book_author (book_id, author_name) VALUES (1, 'Brian Brown');  
INSERT INTO library.book_author (book_id, author_name) VALUES (1, 'Michael Davis');  
INSERT INTO library.book_author (book_id, author_name) VALUES (2, 'Alice Black');  
INSERT INTO library.book_author (book_id, author_name) VALUES (2, 'David Lee');  
INSERT INTO library.book_author (book_id, author_name) VALUES (3, 'Amanda Lopez');  
INSERT INTO library.book_author (book_id, author_name) VALUES (4, 'Brian Brown');  
INSERT INTO library.book_author (book_id, author_name) VALUES (4, 'Jessica Martinez');  
INSERT INTO library.book_author (book_id, author_name) VALUES (5, 'Michael Davis');  
INSERT INTO library.book_author (book_id, author_name) VALUES (6, 'Jessica Martinez');  
INSERT INTO library.book_author (book_id, author_name) VALUES (7, 'Emily Brown');  
INSERT INTO library.book_author (book_id, author_name) VALUES (8, 'Michael Davis');  
INSERT INTO library.book_author (book_id, author_name) VALUES (9, 'Brian Brown');  
INSERT INTO library.book_author (book_id, author_name) VALUES (10, 'Jessica Martinez');  
INSERT INTO library.book_author (book_id, author_name) VALUES (11, 'Tyler Ramirez');  
INSERT INTO library.book_author (book_id, author_name) VALUES (12, 'Jessica Polk');  
INSERT INTO library.book_author (book_id, author_name) VALUES (13, 'Tony Stark');  
INSERT INTO library.book_author (book_id, author_name) VALUES (14, 'Emily Brown');  
INSERT INTO library.book_author (book_id, author_name) VALUES (15, 'John Johnson');  
INSERT INTO library.book_author (book_id, author_name) VALUES (16, 'David Lee');  
INSERT INTO library.book_author (book_id, author_name) VALUES (17, 'Michael Davis');  
INSERT INTO library.book_author (book_id, author_name) VALUES (18, 'David Lee');  
INSERT INTO library.book_author (book_id, author_name) VALUES (19, 'Andrew Nguyen');  
INSERT INTO library.book_author (book_id, author_name) VALUES (20, 'Jessica Martinez');  
INSERT INTO library.book_author (book_id, author_name) VALUES (21, 'Alice Black');  
INSERT INTO library.book_author (book_id, author_name) VALUES (22, 'David Lee');  
INSERT INTO library.book_author (book_id, author_name) VALUES (23, 'Alice Black');  
INSERT INTO library.book_author (book_id, author_name) VALUES (24, 'Michael Davis');  
INSERT INTO library.book_author (book_id, author_name) VALUES (25, 'Tyler Ramirez');  