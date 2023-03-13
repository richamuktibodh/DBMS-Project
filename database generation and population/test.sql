drop DATABASE if EXISTS final;
create DATABASE final;
use final;

drop Table if EXISTS Cart;
drop Table if EXISTS Product;
drop Table if EXISTS Category;
drop Table if EXISTS Payments;
drop Table if EXISTS User;
create Table User(
    -- user id, name(first name, middle name, last name), address, email, phone, dob, age(derived), prime user(boolean) 
    user_id int(8) NOT NULL AUTO_INCREMENT,
    first_name varchar(20) NOT NULL,
    middle_name varchar(20) NULL,
    last_name varchar(20) NOT NULL,
    address varchar(100) NOT NULL,
    email varchar(50) NOT NULL,
    phone long NOT NULL,
    dob DATETIME NOT NULL,
    prime_user boolean NOT NULL DEFAULT FALSE,
    PRIMARY KEY (user_id)
);
create Table Category(
    name varchar(20) NOT NULL, 
    category_id int(8) NOT NULL AUTO_INCREMENT,
    description varchar(256) NOT NULL,
    PRIMARY KEY (category_id)
);  
-- create Table Cart(
--     user_id int(8) NOT NULL AUTO_INCREMENT,
--     -- quantity int(8) NOT NULL,
--     -- user_id int(8) NOT NULL,
--     PRIMARY KEY (user_id)
--     -- FOREIGN KEY (user_id) REFERENCES User(user_id)
-- );
create Table Product(
    product_id int(8) NOT NULL AUTO_INCREMENT,
    price int(10) NOT NULL,
    name varchar(20) NOT NULL,
    -- quantity int(8) NOT NULL, 
    description varchar(256),
    category_id int(8) NOT NULL,
    user_id int(8) NULL,
    status varchar(20) NOT NULL,
    PRIMARY KEY (product_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);

create Table Payments(
    Payment_ID int(8) NOT NULL AUTO_INCREMENT,
    Payment_Date DATETIME NOT NULL,
    amount int(8) NOT NULL,
    user_id int(8) NOT NULL,
    PRIMARY KEY (Payment_ID),
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);

-- user
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (1, 'Jethro', 'Jeanelle', 'Van der Krui', '663 Northwestern Parkway', 'jvanderkrui0@virginia.edu', '4171937622', '1930-03-30', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (2, 'Howie', 'Beret', 'Orys', '6 Carey Trail', 'borys1@exblog.jp', '2954834267', '1935-05-17', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (3, 'Georas', 'Olivero', 'Dales', '5645 Buhler Circle', 'odales2@i2i.jp', '3031873937', '1980-04-06', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (4, 'Hildegarde', null, 'Ashplant', '682 Sauthoff Pass', 'gashplant3@tinypic.com', '5523762307', '1965-03-30', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (5, 'Sandy', 'Meggie', 'Aiskrigg', '7868 Express Junction', 'maiskrigg4@yelp.com', '4066163322', '1946-03-15', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (6, 'Vin', 'Spencer', 'Menpes', '93 Autumn Leaf Way', 'smenpes5@reverbnation.com', '5722656661', '1984-05-19', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (7, 'Camey', 'Jillene', 'O''Carran', '16024 Vernon Place', 'jocarran6@g.co', '7781207011', '1944-01-07', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (8, 'Ansley', null, 'Wisher', '642 Hollow Ridge Crossing', 'bwisher7@tamu.edu', '1772355385', '1948-12-11', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (9, 'Matt', 'Deedee', 'Denington', '20786 Sugar Lane', 'ddenington8@webeden.co.uk', '5692641270', '2001-03-28', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (10, 'Carolan', 'Korry', 'Clowes', '03 Debra Alley', 'kclowes9@who.int', '9638544875', '1943-11-07', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (11, 'Urbain', 'Felizio', 'Corson', '00001 Acker Way', 'fcorsona@ted.com', '7622705598', '1981-05-10', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (12, 'Hertha', 'Sigismondo', 'Piolli', '7 Harbort Plaza', 'spiollib@odnoklassniki.ru', '2798698590', '1961-09-09', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (13, 'Dinah', 'Charo', 'Saban', '1267 Cherokee Terrace', 'csabanc@dyndns.org', '9547721248', '2004-08-24', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (14, 'Jemie', 'Yale', 'Pothbury', '40147 Lyons Way', 'ypothburyd@pinterest.com', '2543257103', '1997-05-15', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (15, 'Adria', 'Lexy', 'Maw', '9 Jay Crossing', 'lmawe@mac.com', '9164721648', '1983-02-11', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (16, 'Marice', 'Ertha', 'Chastenet', '65501 Heffernan Crossing', 'echastenetf@utexas.edu', '4022209762', '1953-10-25', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (17, 'Corrie', null, 'Custance', '5423 Arapahoe Hill', 'bcustanceg@narod.ru', '9268458683', '1990-02-25', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (18, 'Chanda', 'Kev', 'Gabbott', '0683 Portage Crossing', 'kgabbotth@etsy.com', '6745111707', '1981-10-31', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (19, 'Cati', null, 'Crannage', '7511 Buena Vista Place', 'tcrannagei@pagesperso-orange.fr', '5228387093', '1985-09-21', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (20, 'Minda', null, 'Bockh', '96 Clemons Circle', 'ebockhj@csmonitor.com', '6043579638', '1971-09-04', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (21, 'Antonius', null, 'Askell', '1860 Bay Point', 'easkellk@163.com', '1219744993', '1975-03-04', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (22, 'Margret', null, 'Westgate', '2 Beilfuss Place', 'gwestgatel@un.org', '5964255922', '2003-08-22', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (23, 'Lanny', 'Lorie', 'Wraith', '83 Sunnyside Plaza', 'lwraithm@bluehost.com', '2789780640', '2001-02-27', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (24, 'Charin', null, 'Glastonbury', '84732 Gateway Way', 'rglastonburyn@mozilla.org', '5956038577', '1941-12-10', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (25, 'Suellen', 'Jess', 'Mibourne', '31279 Vidon Road', 'jmibourneo@sakura.ne.jp', '4998029758', '1946-01-20', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (26, 'Merwyn', 'Ashien', 'Kestell', '80 Brickson Park Way', 'akestellp@techcrunch.com', '5883794964', '1950-01-13', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (27, 'Andreas', 'Adrianna', 'Pinniger', '737 Elka Hill', 'apinnigerq@sun.com', '7548904678', '1954-02-06', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (28, 'Abigail', 'Enrichetta', 'Moyse', '05797 Twin Pines Alley', 'emoyser@about.me', '6166969552', '1936-03-27', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (29, 'Karlyn', null, 'Tebboth', '938 Schmedeman Avenue', 'atebboths@cnn.com', '7467150016', '1995-12-22', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (30, 'Lammond', 'Meghann', 'Jahn', '1848 Darwin Road', 'mjahnt@facebook.com', '5513634532', '1932-11-01', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (31, 'Lynnet', 'Homere', 'Hammersley', '59211 Park Meadow Junction', 'hhammersleyu@reverbnation.com', '4811154414', '1986-01-07', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (32, 'Alwin', 'Orella', 'Busby', '6071 Sage Lane', 'obusbyv@liveinternet.ru', '4104352772', '1966-08-07', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (33, 'Kendrick', null, 'Spawell', '38153 Red Cloud Terrace', 'dspawellw@sbwire.com', '2528116840', '1975-02-16', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (34, 'Durante', 'Garret', 'Limeburn', '95 Orin Park', 'glimeburnx@sakura.ne.jp', '6398939864', '1955-12-07', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (35, 'Granville', 'Marcille', 'Sconce', '447 Westport Circle', 'msconcey@cocolog-nifty.com', '9583114738', '1948-05-14', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (36, 'Gretta', 'Nollie', 'Gemmill', '24312 Badeau Hill', 'ngemmillz@yahoo.com', '1171584413', '1990-04-11', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (37, 'Sharyl', null, 'Dibdall', '7 School Circle', 'rdibdall10@spiegel.de', '8445629903', '1949-10-02', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (38, 'Opalina', null, 'Skpsey', '6524 Aberg Hill', 'lskpsey11@myspace.com', '4726459308', '1977-07-13', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (39, 'Loralee', null, 'Leas', '84445 Kipling Street', 'pleas12@scribd.com', '2786009081', '1965-02-25', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (40, 'Latisha', null, 'O''Fallowne', '2557 West Parkway', 'lofallowne13@rediff.com', '2453796725', '1945-07-14', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (41, 'Redford', 'Delphine', 'Maiden', '636 Sauthoff Hill', 'dmaiden14@businessinsider.com', '5671947476', '2004-02-06', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (42, 'Isaac', null, 'Robion', '63 Delladonna Center', 'grobion15@ow.ly', '5886326011', '1991-03-05', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (43, 'Manon', 'Adelind', 'Rey', '261 Schlimgen Junction', 'arey16@diigo.com', '9981373642', '1981-11-27', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (44, 'Gill', null, 'Quillinane', '043 Lotheville Circle', 'aquillinane17@pagesperso-orange.fr', '2833356067', '1981-06-18', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (45, 'Moritz', 'Roma', 'Berget', '51627 Holmberg Lane', 'rberget18@gnu.org', '3372081146', '1952-04-18', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (46, 'Ronny', 'Robinette', 'Jirieck', '02 Emmet Circle', 'rjirieck19@pen.io', '7056465089', '1984-07-31', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (47, 'Xylina', null, 'Tace', '7 Chive Drive', 'htace1a@bravesites.com', '5755269286', '1958-03-09', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (48, 'Ray', 'Jacob', 'Jannex', '549 La Follette Point', 'jjannex1b@liveinternet.ru', '1844540644', '1938-05-08', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (49, 'Gasparo', 'Cynthea', 'Gillbanks', '87 Fairview Pass', 'cgillbanks1c@prnewswire.com', '9106035041', '1988-05-05', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (50, 'Sherrie', null, 'Barrett', '728 South Parkway', 'bbarrett1d@sciencedirect.com', '6545430213', '1953-04-21', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (51, 'Bendicty', 'Mauricio', 'Thew', '425 Sycamore Terrace', 'mthew1e@mapy.cz', '4295357491', '1955-05-13', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (52, 'Estrellita', 'Storm', 'Fairlaw', '9 Eastwood Terrace', 'sfairlaw1f@mac.com', '1186169835', '1935-10-17', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (53, 'Ferguson', null, 'Aizkovitch', '3941 Superior Park', 'naizkovitch1g@seattletimes.com', '6498381679', '1987-03-28', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (54, 'Samantha', null, 'Plet', '60326 Nancy Circle', 'bplet1h@google.es', '5401148050', '2001-12-17', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (55, 'Charlotta', 'Hughie', 'Halsted', '70 Bunker Hill Alley', 'hhalsted1i@opensource.org', '5382904955', '1963-09-01', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (56, 'Othilia', null, 'Adamik', '8947 Calypso Park', 'aadamik1j@so-net.ne.jp', '3124835379', '2004-07-26', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (57, 'Tracee', 'Neala', 'Dominy', '2024 Arkansas Center', 'ndominy1k@eepurl.com', '7852198954', '1961-01-20', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (58, 'Gallard', null, 'Hunnaball', '10293 Schurz Road', 'bhunnaball1l@europa.eu', '5989314584', '1968-11-02', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (59, 'Titus', null, 'Peirone', '72260 Nancy Way', 'ppeirone1m@alexa.com', '4808864860', '1973-07-23', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (60, 'Randy', 'Del', 'Petrovic', '297 Mifflin Lane', 'dpetrovic1n@shop-pro.jp', '3022126820', '1970-02-21', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (61, 'Rosa', null, 'Ronaldson', '950 Golf Course Plaza', 'aronaldson1o@sphinn.com', '5838553368', '1980-06-07', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (62, 'Bail', 'Electra', 'Loch', '4 Summerview Drive', 'eloch1p@ovh.net', '5886283734', '1982-08-01', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (63, 'Dacy', 'Willdon', 'Standen', '151 Saint Paul Park', 'wstanden1q@stanford.edu', '9347820813', '1953-11-21', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (64, 'Tish', null, 'Bottrill', '4 Shoshone Point', 'tbottrill1r@opera.com', '3815028386', '1993-06-24', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (65, 'Carrie', null, 'Fell', '87320 Southridge Place', 'kfell1s@illinois.edu', '4066463580', '1932-03-28', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (66, 'Brnaby', null, 'Tew', '1089 Lukken Circle', 'atew1t@wp.com', '2138250971', '1985-10-26', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (67, 'Graehme', 'Dov', 'Loughton', '90206 Crescent Oaks Park', 'dloughton1u@wiley.com', '2003210693', '1969-11-20', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (68, 'Waly', null, 'Reubens', '939 Barby Terrace', 'treubens1v@japanpost.jp', '1406734637', '1952-11-11', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (69, 'Sidoney', null, 'Kenewel', '9110 Orin Trail', 'gkenewel1w@army.mil', '8407701470', '1986-05-12', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (70, 'Vern', null, 'Mityukov', '5 Lotheville Center', 'vmityukov1x@seesaa.net', '8174201909', '2003-09-14', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (71, 'Alvan', null, 'Hubbard', '994 Fair Oaks Hill', 'phubbard1y@yolasite.com', '3605516976', '1933-11-27', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (72, 'Goldarina', null, 'Bycraft', '7446 La Follette Pass', 'sbycraft1z@eventbrite.com', '9707065191', '1950-02-08', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (73, 'Ethe', 'Bertha', 'Redwing', '63263 Bartillon Avenue', 'bredwing20@cdc.gov', '2106279757', '1986-02-04', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (74, 'Stearn', null, 'Harle', '2093 Westend Center', 'charle21@webeden.co.uk', '5564474642', '1971-09-12', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (75, 'Ferdie', 'Lusa', 'Lindeboom', '8878 Independence Point', 'llindeboom22@privacy.gov.au', '2973180924', '1941-12-25', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (76, 'Bondy', 'Newton', 'Parres', '90970 Utah Street', 'nparres23@clickbank.net', '2845069511', '1990-09-07', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (77, 'Kaile', 'Charita', 'Autie', '30042 Morning Pass', 'cautie24@house.gov', '9039244796', '1953-11-04', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (78, 'Meghan', 'Taber', 'McGrah', '92 Goodland Crossing', 'tmcgrah25@rakuten.co.jp', '1443088455', '1938-07-01', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (79, 'Seward', null, 'O''Rodane', '05854 Gina Place', 'jorodane26@dmoz.org', '7675608886', '1930-08-29', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (80, 'Katerina', 'Dee', 'O''Leagham', '66 Jenna Alley', 'doleagham27@cisco.com', '3871361390', '1939-03-17', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (81, 'Woodman', 'Chic', 'Coonihan', '60704 Pearson Court', 'ccoonihan28@umich.edu', '8904028241', '2004-11-30', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (82, 'Mitchell', 'Jordon', 'Di Biasio', '291 Nevada Terrace', 'jdibiasio29@businessinsider.com', '2759738049', '1944-12-23', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (83, 'Xena', null, 'Keough', '789 Calypso Center', 'jkeough2a@hatena.ne.jp', '8955236377', '1942-12-16', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (84, 'Quillan', 'Rena', 'Elgey', '418 Victoria Pass', 'relgey2b@va.gov', '4306758879', '1952-07-24', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (85, 'Gayler', null, 'Luker', '1774 Prairieview Way', 'iluker2c@networksolutions.com', '9868814834', '1971-09-12', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (86, 'Jackquelin', 'Veda', 'Scrigmour', '1 Farwell Place', 'vscrigmour2d@earthlink.net', '8049300653', '1980-06-30', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (87, 'Jelene', null, 'Harroll', '6488 Dwight Point', 'tharroll2e@wiley.com', '5048709506', '1959-08-30', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (88, 'Umberto', null, 'Debney', '0149 Di Loreto Street', 'adebney2f@feedburner.com', '4759581412', '1994-09-12', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (89, 'Paloma', null, 'Meriet', '9 Weeping Birch Crossing', 'tmeriet2g@reference.com', '1176353264', '1989-04-11', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (90, 'Beth', null, 'Aland', '22481 Michigan Avenue', 'maland2h@deviantart.com', '2016738037', '1946-03-19', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (91, 'Ada', null, 'Keggin', '2 Sachtjen Plaza', 'lkeggin2i@apache.org', '2237213205', '1952-03-16', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (92, 'Hogan', null, 'McEvilly', '3 Dexter Place', 'emcevilly2j@pinterest.com', '1277898844', '2004-04-27', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (93, 'Stanwood', null, 'Wakerley', '3 Claremont Junction', 'swakerley2k@pagesperso-orange.fr', '7988127904', '1996-12-18', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (94, 'Olympe', 'Sidonnie', 'Croisier', '3404 Bunting Park', 'scroisier2l@nba.com', '8462137929', '1973-11-15', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (95, 'Sargent', 'Gwendolin', 'Cruces', '14 Mcbride Junction', 'gcruces2m@cnbc.com', '8636319443', '1939-04-17', false);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (96, 'Lavinie', null, 'Goldring', '431 Stephen Court', 'pgoldring2n@weibo.com', '4015438802', '1988-11-16', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (97, 'Delainey', 'Mar', 'Ferrandez', '89 Merchant Parkway', 'mferrandez2o@live.com', '7469609617', '1953-03-04', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (98, 'Bendix', 'Dierdre', 'Finneran', '18508 Emmet Circle', 'dfinneran2p@examiner.com', '2077866643', '1958-02-02', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (99, 'Wendeline', null, 'Nelthropp', '9468 Charing Cross Court', 'anelthropp2q@fc2.com', '9749650078', '1976-04-15', true);
insert into User (user_id, first_name, middle_name, last_name, address, email, phone, dob, prime_user) values (100, 'Howey', null, 'O''Gorman', '76889 Drewry Alley', 'aogorman2r@networksolutions.com', '3996739171', '1966-04-25', true);
-- # Rows:


-- categories
insert into Category (category_id, name, description) values (1, 'electronics', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est');
insert into Category (category_id, name, description) values (2, 'books', 'integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor');
insert into Category (category_id, name, description) values (3, 'clothes', 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio');
insert into Category (category_id, name, description) values (4, 'accessories', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique');
insert into Category (category_id, name, description) values (5, 'footwear', 'quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero');
insert into Category (category_id, name, description) values (6, 'jewelry', 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus');
insert into Category (category_id, name, description) values (7, 'toys', 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet');
insert into Category (category_id, name, description) values (8, 'sports', 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt');
insert into Category (category_id, name, description) values (9, 'music', 'nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit');

-- cart
-- insert into cart (user_id, user_id) values (1, 1);
-- insert into cart (user_id, user_id) values (2, 2);
-- insert into cart (user_id, user_id) values (3, 3);
-- insert into cart (user_id, user_id) values (4, 4);
-- insert into cart (user_id, user_id) values (5, 5);
-- insert into cart (user_id, user_id) values (6, 6);
-- insert into cart (user_id, user_id) values (7, 7);
-- insert into cart (user_id, user_id) values (8, 8);
-- insert into cart (user_id, user_id) values (9, 9);
-- insert into cart (user_id, user_id) values (10, 10);
-- insert into cart (user_id, user_id) values (11, 11);
-- insert into cart (user_id, user_id) values (12, 12);
-- insert into cart (user_id, user_id) values (13, 13);
-- insert into cart (user_id, user_id) values (14, 14);
-- insert into cart (user_id, user_id) values (15, 15);
-- insert into cart (user_id, user_id) values (16, 16);
-- insert into cart (user_id, user_id) values (17, 17);
-- insert into cart (user_id, user_id) values (18, 18);
-- insert into cart (user_id, user_id) values (19, 19);
-- insert into cart (user_id, user_id) values (20, 20);
-- insert into cart (user_id, user_id) values (21, 21);
-- insert into cart (user_id, user_id) values (22, 22);
-- insert into cart (user_id, user_id) values (23, 23);
-- insert into cart (user_id, user_id) values (24, 24);
-- insert into cart (user_id, user_id) values (25, 25);
-- insert into cart (user_id, user_id) values (26, 26);
-- insert into cart (user_id, user_id) values (27, 27);
-- insert into cart (user_id, user_id) values (28, 28);
-- insert into cart (user_id, user_id) values (29, 29);
-- insert into cart (user_id, user_id) values (30, 30);
-- insert into cart (user_id, user_id) values (31, 31);
-- insert into cart (user_id, user_id) values (32, 32);
-- insert into cart (user_id, user_id) values (33, 33);
-- insert into cart (user_id, user_id) values (34, 34);
-- insert into cart (user_id, user_id) values (35, 35);
-- insert into cart (user_id, user_id) values (36, 36);
-- insert into cart (user_id, user_id) values (37, 37);
-- insert into cart (user_id, user_id) values (38, 38);
-- insert into cart (user_id, user_id) values (39, 39);
-- insert into cart (user_id, user_id) values (40, 40);
-- insert into cart (user_id, user_id) values (41, 41);
-- insert into cart (user_id, user_id) values (42, 42);
-- insert into cart (user_id, user_id) values (43, 43);
-- insert into cart (user_id, user_id) values (44, 44);
-- insert into cart (user_id, user_id) values (45, 45);
-- insert into cart (user_id, user_id) values (46, 46);
-- insert into cart (user_id, user_id) values (47, 47);
-- insert into cart (user_id, user_id) values (48, 48);
-- insert into cart (user_id, user_id) values (49, 49);
-- insert into cart (user_id, user_id) values (50, 50);
-- insert into cart (user_id, user_id) values (51, 51);
-- insert into cart (user_id, user_id) values (52, 52);
-- insert into cart (user_id, user_id) values (53, 53);
-- insert into cart (user_id, user_id) values (54, 54);
-- insert into cart (user_id, user_id) values (55, 55);
-- insert into cart (user_id, user_id) values (56, 56);
-- insert into cart (user_id, user_id) values (57, 57);
-- insert into cart (user_id, user_id) values (58, 58);
-- insert into cart (user_id, user_id) values (59, 59);
-- insert into cart (user_id, user_id) values (60, 60);
-- insert into cart (user_id, user_id) values (61, 61);
-- insert into cart (user_id, user_id) values (62, 62);
-- insert into cart (user_id, user_id) values (63, 63);
-- insert into cart (user_id, user_id) values (64, 64);
-- insert into cart (user_id, user_id) values (65, 65);
-- insert into cart (user_id, user_id) values (66, 66);
-- insert into cart (user_id, user_id) values (67, 67);
-- insert into cart (user_id, user_id) values (68, 68);
-- insert into cart (user_id, user_id) values (69, 69);
-- insert into cart (user_id, user_id) values (70, 70);
-- insert into cart (user_id, user_id) values (71, 71);
-- insert into cart (user_id, user_id) values (72, 72);
-- insert into cart (user_id, user_id) values (73, 73);
-- insert into cart (user_id, user_id) values (74, 74);
-- insert into cart (user_id, user_id) values (75, 75);
-- insert into cart (user_id, user_id) values (76, 76);
-- insert into cart (user_id, user_id) values (77, 77);
-- insert into cart (user_id, user_id) values (78, 78);
-- insert into cart (user_id, user_id) values (79, 79);
-- insert into cart (user_id, user_id) values (80, 80);
-- insert into cart (user_id, user_id) values (81, 81);
-- insert into cart (user_id, user_id) values (82, 82);
-- insert into cart (user_id, user_id) values (83, 83);
-- insert into cart (user_id, user_id) values (84, 84);
-- insert into cart (user_id, user_id) values (85, 85);
-- insert into cart (user_id, user_id) values (86, 86);
-- insert into cart (user_id, user_id) values (87, 87);
-- insert into cart (user_id, user_id) values (88, 88);
-- insert into cart (user_id, user_id) values (89, 89);
-- insert into cart (user_id, user_id) values (90, 90);
-- insert into cart (user_id, user_id) values (91, 91);
-- insert into cart (user_id, user_id) values (92, 92);
-- insert into cart (user_id, user_id) values (93, 93);
-- insert into cart (user_id, user_id) values (94, 94);
-- insert into cart (user_id, user_id) values (95, 95);
-- insert into cart (user_id, user_id) values (96, 96);
-- insert into cart (user_id, user_id) values (97, 97);
-- insert into cart (user_id, user_id) values (98, 98);
-- insert into cart (user_id, user_id) values (99, 99);
-- insert into cart (user_id, user_id) values (100, 100);


-- products
insert into Product (product_id, price, name, description, category_id, user_id, status) values (1, '8435', 'sit', 'diam', 4, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (2, '9352', 'mollis', 'ultrices enim lorem ipsum', 9, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (3, '7019', 'potenti', 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed', 3, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (4, '1552', 'nibh', 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', 6, 22, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (5, '4867', 'quis', 'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique', 7, 35, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (6, '1607', 'orci', 'dis parturient', 2, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (7, '1570', 'interdum', 'mi integer ac neque duis bibendum', 2, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (8, '2546', 'risus', 'congue', 8, 90, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (9, '6601', 'quis', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', 5, 95, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (10, '6522', 'ut', 'rutrum neque aenean', 4, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (11, '5645', 'dignissim', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', 1, 69, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (12, '0966', 'tempus', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed', 3, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (13, '4646', 'quam', 'faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam', 4, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (14, '4350', 'interdum', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', 2, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (15, '7158', 'phasellus', 'eros elementum pellentesque quisque porta volutpat erat quisque', 8, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (16, '2485', 'odio', 'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper', 8, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (17, '1943', 'fusce', 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', 7, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (18, '7028', 'lacinia', 'odio donec', 6, 3, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (19, '6856', 'cras', 'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', 9, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (20, '7264', 'adipiscing', 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', 7, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (21, '5685', 'interdum', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi', 3, 63, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (22, '3055', 'et', 'non mi integer ac neque duis bibendum morbi non', 5, 42, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (23, '8428', 'lorem', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', 2, 34, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (24, '9628', 'sed', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', 5, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (25, '8913', 'vivamus', 'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at', 4, 89, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (26, '1098', 'maecenas', 'ipsum primis in faucibus orci luctus et ultrices posuere', 1, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (27, '8878', 'consequat', 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat', 4, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (28, '3531', 'vestibulum', 'in ante vestibulum ante ipsum primis in', 8, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (29, '9713', 'rutrum', 'sociis natoque penatibus et magnis dis', 5, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (30, '4893', 'nam', 'convallis morbi odio odio elementum', 8, 55, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (31, '8706', 'erat', 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', 7, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (32, '3524', 'nam', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', 8, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (33, '1665', 'fusce', 'est', 9, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (34, '1356', 'ante', 'donec vitae', 1, 90, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (35, '6600', 'at', 'sodales', 2, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (36, '4512', 'id', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet', 9, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (37, '5370', 'nulla', 'potenti in eleifend quam a odio', 8, 35, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (38, '5526', 'consequat', 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', 3, 66, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (39, '1790', 'in', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', 9, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (40, '2817', 'pharetra', 'at feugiat non pretium quis lectus suspendisse potenti', 5, 95, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (41, '5842', 'dui', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam', 8, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (42, '5221', 'sit', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus', 5, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (43, '6927', 'odio', 'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in', 5, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (44, '8231', 'sem', 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 7, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (45, '6893', 'ultricies', 'integer ac leo pellentesque ultrices mattis odio donec vitae', 2, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (46, '8839', 'porta', 'nulla neque', 8, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (47, '8842', 'leo', 'venenatis turpis enim blandit mi in porttitor pede justo', 6, 72, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (48, '6580', 'nec', 'pellentesque quisque porta', 9, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (49, '3843', 'congue', 'congue vivamus metus arcu adipiscing molestie hendrerit', 3, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (50, '1980', 'libero', 'ante ipsum', 2, 74, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (51, '9029', 'est', 'non mi integer ac neque duis bibendum morbi non', 8, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (52, '7707', 'ut', 'parturient montes nascetur ridiculus mus', 8, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (53, '1999', 'feugiat', 'sem praesent id massa id nisl venenatis lacinia aenean sit amet justo', 7, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (54, '7927', 'sed', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', 1, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (55, '7213', 'convallis', 'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', 1, 8, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (56, '3411', 'condimentum', 'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 3, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (57, '0833', 'fusce', 'lacus curabitur at ipsum', 6, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (58, '3394', 'ipsum', 'varius nulla facilisi cras non velit nec', 9, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (59, '8445', 'quam', 'cubilia curae donec pharetra magna vestibulum aliquet', 6, 38, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (60, '5377', 'donec', 'et', 6, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (61, '6045', 'sem', 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', 4, 94, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (62, '4781', 'in', 'ridiculus mus vivamus vestibulum sagittis sapien', 8, 1, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (63, '1991', 'tortor', 'tempor convallis', 3, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (64, '9419', 'quis', 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis', 1, 85, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (65, '6133', 'lorem', 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', 9, 55, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (66, '5708', 'id', 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', 4, 37, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (67, '2024', 'quam', 'dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis', 5, 1, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (68, '1437', 'pulvinar', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis', 9, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (69, '5670', 'adipiscing', 'consequat ut nulla sed accumsan felis ut at dolor quis', 9, 89, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (70, '7900', 'in', 'ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate', 7, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (71, '7729', 'nam', 'mi in porttitor pede justo eu massa donec', 6, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (72, '1549', 'ac', 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque', 6, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (73, '2870', 'ac', 'ante vestibulum ante ipsum primis', 7, 1, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (74, '6002', 'non', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', 3, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (75, '9940', 'nulla', 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor', 1, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (76, '3806', 'magnis', 'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', 8, 63, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (77, '6532', 'dictumst', 'turpis eget elit', 8, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (78, '8211', 'est', 'adipiscing lorem vitae mattis nibh ligula nec sem duis', 2, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (79, '2512', 'diam', 'vel augue vestibulum rutrum rutrum neque aenean auctor', 2, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (80, '4607', 'enim', 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer', 2, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (81, '4663', 'vestibulum', 'ac neque duis bibendum morbi non quam nec dui luctus', 9, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (82, '7033', 'aliquet', 'congue risus semper porta volutpat quam pede lobortis ligula sit', 6, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (83, '7316', 'donec', 'ac nulla sed vel enim sit amet', 1, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (84, '4693', 'semper', 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent', 8, 24, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (85, '7303', 'fringilla', 'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh', 2, 30, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (86, '0445', 'turpis', 'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie', 8, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (87, '9766', 'tortor', 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et', 5, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (88, '2092', 'id', 'eleifend luctus ultricies eu nibh quisque id justo', 2, 12, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (89, '9204', 'parturient', 'porta volutpat erat quisque erat eros', 4, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (90, '7505', 'purus', 'massa volutpat convallis', 5, 92, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (91, '8919', 'sapien', 'pede venenatis non sodales', 2, 13, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (92, '5766', 'lacus', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum', 3, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (93, '7957', 'nunc', 'ultrices posuere cubilia curae mauris viverra diam vitae quam', 5, 1, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (94, '3291', 'enim', 'at lorem integer tincidunt ante vel ipsum praesent', 4, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (95, '1633', 'integer', 'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', 3, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (96, '4715', 'convallis', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', 7, 23, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (97, '2022', 'semper', 'rutrum neque aenean auctor gravida sem praesent id massa id nisl', 6, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (98, '7409', 'venenatis', 'habitasse platea dictumst maecenas', 1, null, 'In stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (99, '8345', 'justo', 'convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque', 7, null, 'Out of stock');
insert into Product (product_id, price, name, description, category_id, user_id, status) values (100, '1988', 'semper', 'ipsum integer a nibh in quis', 5, null, 'In stock');


-- payments
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (1, '1971-04-13', '-9224', 16);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (2, '2004-04-14', '4823', 96);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (3, '2012-04-04', '3942', 22);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (4, '2005-10-20', '-3204', 14);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (5, '1976-02-08', '5556', 67);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (6, '1984-06-11', '2876', 49);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (7, '2000-01-14', '-5898', 99);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (8, '1999-10-18', '4770', 2);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (9, '1983-10-16', '-7697', 61);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (10, '1997-08-08', '7396', 36);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (11, '2006-04-09', '-420', 36);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (12, '1989-02-02', '-9903', 39);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (13, '1981-02-28', '9999', 33);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (14, '2007-05-07', '1957', 56);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (15, '1970-12-21', '4365', 62);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (16, '1970-09-29', '-2853', 41);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (17, '2017-04-24', '-5149', 11);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (18, '2007-10-13', '558', 10);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (19, '1979-05-25', '-8642', 6);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (20, '1994-01-17', '5965', 12);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (21, '2018-01-11', '-3179', 70);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (22, '2021-09-26', '-3345', 40);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (23, '2014-03-17', '5195', 66);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (24, '1991-03-12', '2606', 82);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (25, '2013-01-11', '-5760', 70);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (26, '1976-11-14', '882', 37);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (27, '1973-09-23', '-6453', 84);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (28, '1981-05-14', '73804', 8);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (29, '1995-05-04', '4088', 64);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (30, '2011-08-24', '-8772', 67);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (31, '1984-12-10', '-907', 98);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (32, '1988-08-30', '4690', 35);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (33, '1978-12-03', '-7621', 81);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (34, '2014-08-30', '1555', 24);
insert into Payments (Payment_ID, Payment_Date, amount, user_id) values (35, '1989-12-10', '-356', 10);

