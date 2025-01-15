DROP TABLE IF EXISTS culinary.order;
DROP TABLE IF EXISTS culinary.order_item;
DROP TABLE IF EXISTS culinary.menu;
DROP TABLE IF EXISTS culinary.reservation;
DROP TABLE IF EXISTS culinary.users;
DROP TYPE IF EXISTS job;

CREATE TYPE job AS ENUM ('bartender', 'prep cook', 'server', 'line cook', 'sous chef', 'chef', 'busser', 'host/hostess');

CREATE TABLE culinary.users(
	user_id SERIAL,
	username VARCHAR(255) PRIMARY KEY,
	user_password VARCHAR(255),
	clearance job
);

CREATE TABLE culinary.reservation(
	id SERIAL PRIMARY KEY,
	table_number INTEGER,
	reservation_date DATE,
	reservation_time TIME,
	number_of_people INTEGER,
	email VARCHAR(255),
	phone VARCHAR(255),
	special_accomodations VARCHAR(255), 
	reservation_creator VARCHAR(255),
	FOREIGN KEY (reservation_creator) REFERENCES culinary.users(username)
);

CREATE TABLE culinary.menu(
	item_id SERIAL PRIMARY KEY,
	item_name VARCHAR(255),
	cost MONEY,
	allergens VARCHAR(255)
);

CREATE TABLE culinary.order(
	order_id INTEGER PRIMARY KEY,
	cost MONEY,
	tip MONEY,
	completed BOOLEAN,
	FOREIGN KEY (order_id) REFERENCES culinary.reservation(id) ON DELETE cascade
);

CREATE TABLE culinary.order_item(
	order_id INTEGER,
	item_id INTEGER,
	item_number INTEGER,
	completed BOOLEAN,
	FOREIGN KEY (order_id) REFERENCES culinary.reservation(id) ON DELETE cascade,
	FOREIGN KEY (item_id) REFERENCES culinary.menu(item_id),
	PRIMARY KEY(order_id, item_number)
);

insert into culinary.users (username, user_password, clearance) values ('Carlin', 'iA6`MZP_D51@', 'bartender');
insert into culinary.users (username, user_password, clearance) values ('Doug', 'iL9,*!qf9i/?', 'prep cook');
insert into culinary.users (username, user_password, clearance) values ('Gustavus', 'eN5`5TWxpmBblT''9', 'server');
insert into culinary.users (username, user_password, clearance) values ('Aliza', 'vZ4~N<6"rV.N', 'prep cook');
insert into culinary.users (username, user_password, clearance) values ('Camey', 'zH1`UjQ?{Fx', 'server');
insert into culinary.users (username, user_password, clearance) values ('Chloe', 'eW9|Utng`83e''', 'line cook');
insert into culinary.users (username, user_password, clearance) values ('Aldon', 'yN9{{|j8=', 'sous chef');
insert into culinary.users (username, user_password, clearance) values ('Nil', 'sW1)QuK_!+', 'bartender');
insert into culinary.users (username, user_password, clearance) values ('Arni', 'fW3)=Pvh!3s*b<!', 'chef');
insert into culinary.users (username, user_password, clearance) values ('Maynord', 'wZ3{AsRMx+z2PA', 'chef');
insert into culinary.users (username, user_password, clearance) values ('Vivyanne', 'rI0''ungH"6XER', 'chef');
insert into culinary.users (username, user_password, clearance) values ('Valaria', 'yF6#J42Xn?#%vp.', 'busser');
insert into culinary.users (username, user_password, clearance) values ('Delbert', 'gO9<txyVb', 'host/hostess');
insert into culinary.users (username, user_password, clearance) values ('Jerrie', 'iA2?4TcPumwlW!', 'line cook');
insert into culinary.users (username, user_password, clearance) values ('Avery', 'gH9.m!\$Bq|Xw4>', 'prep cook');
insert into culinary.users (username, user_password, clearance) values ('Tove', 'fD9~#>IY\AUE', 'sous chef');
insert into culinary.users (username, user_password, clearance) values ('Danita', 'lM7"GC(&(YHJ\E', 'bartender');
insert into culinary.users (username, user_password, clearance) values ('Devina', 'eF4=`KQa', 'chef');
insert into culinary.users (username, user_password, clearance) values ('Hestia', 'lN3_/$?LG|', 'prep cook');
insert into culinary.users (username, user_password, clearance) values ('Margarita', 'tN1"}YY?', 'host/hostess');

insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (20, '5/2/2024', '1:49 AM', 7, 'gkordova0@godaddy.com', '482-728-8176', 'family-style dining', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (86, '8/30/2024', '1:19 PM', 2, 'akloisner1@istockphoto.com', '580-453-5934', 'interactive cooking station', 'Camey');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (76, '4/12/2024', '6:26 PM', 1, 'dgiacobini2@google.co.uk', '440-162-4462', 'live music', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (9, '10/21/2024', '3:00 PM', 6, 'tklugel3@chronoengine.com', '209-715-0618', 'wine pairing menu', 'Camey');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (10, '6/3/2024', '11:04 PM', 9, 'rpflieger4@cyberchimps.com', '296-956-9505', 'private dining room', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (33, '5/15/2024', '6:45 AM', 3, 'aanten5@bigcartel.com', '465-831-1385', 'live music', 'Camey');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (14, '9/12/2024', '4:26 AM', 6, 'ekyngdon6@last.fm', '418-520-8763', 'customizable tasting menu', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (52, '7/23/2024', '1:23 AM', 10, 'wbromell7@ning.com', '967-388-2481', 'vegetarian menu options', 'Camey');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (38, '1/1/2025', '4:13 PM', 4, 'dhuggill8@google.pl', '929-977-5559', 'live music', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (9, '8/7/2024', '12:30 AM', 7, 'tdackombe9@ezinearticles.com', '111-493-5278', 'vegetarian menu options', 'Camey');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (74, '2/16/2024', '2:34 AM', 9, 'lbeecrafta@phpbb.com', '192-259-0250', 'gluten-free menu options', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (71, '1/30/2024', '11:26 AM', 12, 'fboydonb@livejournal.com', '746-153-0273', 'interactive cooking station', 'Camey');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (86, '5/20/2024', '4:09 PM', 5, 'mettlesc@simplemachines.org', '629-486-8713', 'gluten-free menu options', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (10, '3/17/2024', '12:23 AM', 12, 'gfiggessd@symantec.com', '724-670-1771', 'customizable tasting menu', 'Camey');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (17, '5/2/2024', '3:53 PM', 3, 'bwegnere@twitter.com', '164-766-0956', 'chef''s table experience', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (18, '5/22/2024', '3:14 AM', 7, 'asoonhousef@kickstarter.com', '998-851-6685', 'live music', 'Camey');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (53, '8/31/2024', '4:24 PM', 3, 'rnorthridgeg@phoca.cz', '782-548-7858', 'outdoor seating', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (94, '3/24/2024', '2:06 PM', 11, 'nmougeoth@list-manage.com', '491-906-1115', 'vegetarian menu options', 'Camey');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (94, '1/18/2024', '2:44 PM', 4, 'creggioi@joomla.org', '497-561-3011', 'family-style dining', 'Gustavus');
insert into culinary.reservation (table_number, reservation_date, reservation_time, number_of_people, email, phone, special_accomodations, reservation_creator) values (85, '9/12/2024', '10:06 PM', 4, 'ecesconij@canalblog.com', '514-642-3014', 'family-style dining', 'Camey');

insert into culinary.menu (item_name, cost, allergens) values ('Pulled Pork Sandwich', '$1.62', 'soy');
insert into culinary.menu (item_name, cost, allergens) values ('Margarita Pizza', '$5.60', 'wheat');
insert into culinary.menu (item_name, cost, allergens) values ('Caprese Panini', '$6.00', 'gluten');
insert into culinary.menu (item_name, cost, allergens) values ('Margarita Pizza', '$5.81', 'sesame');
insert into culinary.menu (item_name, cost, allergens) values ('Chicken Alfredo', '$7.95', 'wheat');
insert into culinary.menu (item_name, cost, allergens) values ('Vegetable Stir Fry', '$5.45', 'peanuts');
insert into culinary.menu (item_name, cost, allergens) values ('Chicken Alfredo', '$1.44', 'peanuts');
insert into culinary.menu (item_name, cost, allergens) values ('Cheeseburger', '$2.63', 'wheat');
insert into culinary.menu (item_name, cost, allergens) values ('BBQ Ribs', '$9.83', 'dairy');
insert into culinary.menu (item_name, cost, allergens) values ('Fish Tacos', '$4.93', 'gluten');

insert into culinary.order (order_id, cost, tip, completed) values (1, '$20.49', '$11.46', true);
insert into culinary.order (order_id, cost, tip, completed) values (2, '$86.58', '$4.69', true);
insert into culinary.order (order_id, cost, tip, completed) values (3, '$65.81', '$13.58', true);
insert into culinary.order (order_id, cost, tip, completed) values (4, '$41.09', '$7.48', true);
insert into culinary.order (order_id, cost, tip, completed) values (5, '$2.15', '$5.31', true);
insert into culinary.order (order_id, cost, tip, completed) values (6, '$42.47', '$10.70', true);
insert into culinary.order (order_id, cost, tip, completed) values (7, '$53.41', '$5.42', false);
insert into culinary.order (order_id, cost, tip, completed) values (8, '$57.62', '$8.67', false);
insert into culinary.order (order_id, cost, tip, completed) values (9, '$47.60', '$11.29', true);
insert into culinary.order (order_id, cost, tip, completed) values (10, '$3.66', '$4.94', false);
insert into culinary.order (order_id, cost, tip, completed) values (11, '$57.40', '$9.48', false);
insert into culinary.order (order_id, cost, tip, completed) values (12, '$2.29', '$7.09', false);
insert into culinary.order (order_id, cost, tip, completed) values (13, '$13.30', '$2.53', true);
insert into culinary.order (order_id, cost, tip, completed) values (14, '$21.22', '$11.41', false);
insert into culinary.order (order_id, cost, tip, completed) values (15, '$60.82', '$10.46', false);
insert into culinary.order (order_id, cost, tip, completed) values (16, '$40.23', '$9.07', false);
insert into culinary.order (order_id, cost, tip, completed) values (17, '$45.35', '$5.37', true);
insert into culinary.order (order_id, cost, tip, completed) values (18, '$32.52', '$6.54', true);
insert into culinary.order (order_id, cost, tip, completed) values (19, '$72.13', '$4.94', false);
insert into culinary.order (order_id, cost, tip, completed) values (20, '$27.63', '$11.02', false);

insert into culinary.order_item (order_id, item_id, item_number, completed)  values (1, 1, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (2, 2, 1, true);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (3, 4, 1, true);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (4, 6, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (5, 8, 1, true);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (6, 9, 1, true);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (7, 10, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (8, 5, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (9, 7, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (10, 3, 1, true);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (11, 2, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (12, 1, 1, true);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (13, 8, 1, true);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (14, 9, 1, true);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (15, 6, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (16, 5, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (17, 8, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (18, 4, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (19, 3, 1, false);
insert into culinary.order_item (order_id, item_id, item_number, completed) values (20, 2, 1, false);