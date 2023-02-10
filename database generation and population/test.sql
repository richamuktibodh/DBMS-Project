-- create DATABASE final;
use final;


drop Table if EXISTS Cart;
drop Table if EXISTS Product;
drop Table if EXISTS Category;
drop Table if EXiSTS Payments;
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
    -- derive age from current date - dob
    -- age int(3) NOT NULL,
    prime_user boolean NOT NULL DEFAULT FALSE,
    PRIMARY KEY (user_id)
);
create Table Category(
    name varchar(20) NOT NULL, 
    category_id int(8) NOT NULL ,
    description varchar(256) NOT NULL,
    PRIMARY KEY (category_id)
);  
create Table Product(
    product_id int(8) NOT NULL AUTO_INCREMENT,
    price int(10) NOT NULL,
    name varchar(20) NOT NULL,
    quantity int(8) NOT NULL, 
    description varchar(256),
    category_id int(8) NOT NULL,
    status varchar(20) NOT NULL,
    PRIMARY KEY (product_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

create Table Payments(
    Payment_ID int(8) NOT NULL AUTO_INCREMENT,
    Payment_Date DATETIME NOT NULL,
    amount int(8) NOT NULL,
    user_id int(8) NOT NULL,
    PRIMARY KEY (Payment_ID),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);
create Table Cart(
    cart_id int(8) NOT NULL,
    product_id int(8) NOT NULL,
    quantity int(8) NOT NULL,
    user_id int(8) NOT NULL,
    PRIMARY KEY (cart_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
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
