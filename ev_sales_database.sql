create database Electric_Vehicle_Analyis;
use electric_vehicle_analyis;


-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx manufacturers table 1.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx---
create table Manufacturers(
manufacturer_id INT Primary Key,
manufacturer_name varchar(100),
country varchar(50),
founded_year INT 
);


INSERT INTO Manufacturers(manufacturer_id,manufacturer_name,country,founded_year) VALUES
(1,"Tata Motars","India",1945),
(2,"Mahindra Electric","India",1945),
(3,"MG Motar","UK",1924),
(4,"BYD","China",1995),
(5,"Hyundai","South Korea",1967),
(6,"Kia","South Korea",1944),
(7,"Tesala","USA",2003),
(8,"BMW","Germany",1916),
(9,"Mercedes-Benz","Germany",1926),
(10,"Audi","Germany",1909),
(11,"Volvo","Sweden",1927),
(12,"Nisaan","Japan",1933),
(13,"Toyoto","Japan",1937),
(14,"Honda","Japan",1948),
(15,"Renault","France",1899),
(16,"Skoda","Czech Republic",1895),
(17,"Volkswagen","Germany",1937),
(18,"Porsche","Germany",1931),
(19,"Lucid Motars","USA",2007),
(20,"VinFast","Vietnam",2017);

INSERT INTO Manufacturers(manufacturer_id,manufacturer_name,country,founded_year) Values
(21,'Rivian','USA',2009),
(22,'NIO','China',2014),
(23,'XPeng','China',2014),
(24,'Li Auto','China',2015),
(25,'Polestar','Sweden',2017),
(26,'Faraday Future','USA',2014),
(27,'Fisker','USA',2016),
(28,'Lordstown Motors','USA',2018),
(29,'Canoo','USA',2017),
(30,'Arrival','United Kingdom',2015),
(31,'Ather Energy','India',2013),
(32,'Ola Electric','India',2017),
(33,'Euler Motors','India',2018),
(34,'Simple Energy','India',2019),
(35,'PMV Electric','India',2018),
(36,'EKA Mobility','India',2018),
(37,'Omega Seiki','India',2018),
(38,'Altigreen','India',2013),
(39,'Ampere Vehicles','India',2008),
(40,'Hero Electric','India',2007),
(41,'Yadea','China',2001),
(42,'Geely','China',1986),
(43,'Changan','China',1862),
(44,'GAC Aion','China',2017),
(45,'SAIC Motor','China',1955),
(46,'Dongfeng','China',1969),
(47,'BAIC','China',1958),
(48,'Great Wall Motors','China',1984),
(49,'Leapmotor','China',2015),
(50,'Seres','China',2016),
(51,'Peugeot','France',1810),
(52,'Citroen','France',1919),
(53,'Opel','Germany',1862),
(54,'Mini','United Kingdom',1969),
(55,'Jaguar','United Kingdom',1922),
(56,'Land Rover','United Kingdom',1948),
(57,'Bentley','United Kingdom',1919),
(58,'Rolls-Royce Motor Cars','United Kingdom',1906),
(59,'Maserati','Italy',1914),
(60,'Ferrari','Italy',1939),
(61,'Lamborghini','Italy',1963),
(62,'Fiat','Italy',1899),
(63,'Alfa Romeo','Italy',1910),
(64,'Bugatti','France',1909),
(65,'DS Automobiles','France',2014),
(66,'Seat','Spain',1950),
(67,'Cupra','Spain',2018),
(68,'Koenigsegg','Sweden',1994),
(69,'Spyker','Netherlands',2000),
(70,'NEVS','Sweden',2012),
(71,'Proton','Malaysia',1983),
(72,'Perodua','Malaysia',1993),
(73,'Togg','Turkey',2018),
(74,'Aspark','Japan',2005),
(75,'Mitsubishi','Japan',1970),
(76,'Subaru','Japan',1953),
(77,'Suzuki','Japan',1909),
(78,'Mazda','Japan',1920),
(79,'Isuzu','Japan',1916),
(80,'Daihatsu','Japan',1907),
(81,'Vinaxuki','Vietnam',2004),
(82,'Wuling Motors','China',1982),
(83,'Aiways','China',2017),
(84,'Zeekr','China',2021),
(85,'IM Motors','China',2020),
(86,'Arcfox','China',2017),
(87,'Voyah','China',2020),
(88,'Hozon Auto','China',2014),
(89,'Roewe','China',2006),
(90,'Baojun','China',2010),
(91,'Lexus','Japan',1989),
(92,'Infiniti','Japan',1989),
(93,'Acura','Japan',1986),
(94,'Scania','Sweden',1891),
(95,'MAN Truck & Bus','Germany',1758),
(96,'Ashok Leyland','India',1948),
(97,'VE Commercial Vehicles','India',2008),
(98,'Force Motors','India',1958),
(99,'TVS Motor','India',1978),
(100,'Bajaj Auto','India',1945);

select *from Manufacturers;




-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Models table 2.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx--
create table Models(
model_id INT primary key,
manufacturer_id int,
model_name varchar(100),
vehicle_type varchar(50),
battery_capacity decimal(5,2),
range_km int,
price decimal(12,2),
FOREIGN KEY(manufacturer_id)
REFERENCES Manufacturers(manufacturer_id)
);

INSERT INTO Models(model_id,manufacturer_id,model_name,vehicle_type,battery_capacity,range_km,price)
VALUES
(1,1,'Nexon EV','SUV',40.5,465,1600000),
(2,1,'Tiago EV','Hatchback',24.0,315,900000),
(3,2,'XUV400','SUV',39.4,456,1700000),
(4,3,'ZS EV','SUV',50.3,461,2300000),
(5,4,'Atto 3','SUV',60.5,521,3400000),
(6,5,'Kona Electric','SUV',39.2,452,2400000),
(7,6,'EV6','SUV',77.4,708,6500000),
(8,7,'Model 3','Sedan',60.0,491,4500000),
(9,8,'i4','Sedan',83.9,590,7300000),
(10,9,'EQS','Sedan',107.8,857,15500000),
(11,10,'Q8 e-tron','SUV',95.0,600,12000000),
(12,11,'XC40 Recharge','SUV',78.0,530,5700000),
(13,12,'Leaf','Hatchback',40.0,270,3000000),
(14,13,'bZ4X','SUV',71.4,516,5000000),
(15,14,'e:NS1','SUV',68.8,510,4200000),
(16,15,'Megane E-Tech','Hatchback',60.0,470,3800000),
(17,16,'Enyaq','SUV',82.0,530,5500000),
(18,17,'ID.4','SUV',82.0,520,4900000),
(19,18,'Taycan','Sports',93.4,484,18000000),
(20,19,'Air','Sedan',112.0,830,20000000);
INSERT INTO Models(model_id,manufacturer_id,model_name,vehicle_type,battery_capacity,range_km,price) VALUES
(21,21,'R1T','Pickup',135.0,640,7200000),
(22,21,'R1S','SUV',135.0,630,7600000),
(23,22,'ES6','SUV',75.0,610,5200000),
(24,22,'ET5','Sedan',100.0,710,5600000),
(25,23,'P7','Sedan',82.7,706,4800000),
(26,23,'G9','SUV',98.0,702,5900000),
(27,24,'L7','SUV',42.8,520,6100000),
(28,24,'L8','SUV',44.5,540,6700000),
(29,25,'Polestar 2','Sedan',78.0,540,5500000),
(30,25,'Polestar 3','SUV',111.0,700,8200000),
(31,26,'FF91','SUV',130.0,610,18000000),
(32,27,'Ocean Extreme','SUV',106.0,630,7000000),
(33,28,'Endurance','Pickup',109.0,400,5200000),
(34,29,'Lifestyle Vehicle','Van',80.0,400,4500000),
(35,30,'Arrival Van','Van',89.0,450,4200000),
(36,31,'Ather 450X','Scooter',3.7,150,165000),
(37,32,'S1 Pro','Scooter',4.0,195,175000),
(38,33,'HiLoad EV','Commercial',32.0,170,1200000),
(39,34,'One','Scooter',5.0,212,180000),
(40,35,'EaS-E','Micro Car',10.0,200,480000),
(41,36,'EKA Bus','Bus',250.0,300,9500000),
(42,37,'Stream City','Commercial',22.0,180,850000),
(43,38,'NEEV','Commercial',21.0,150,900000),
(44,39,'Magnus EX','Scooter',2.3,120,95000),
(45,40,'Optima CX','Scooter',3.0,140,105000),
(46,41,'YD M6','Scooter',3.5,130,90000),
(47,42,'Geometry C','SUV',70.0,550,3600000),
(48,43,'Deepal S7','SUV',80.0,620,3900000),
(49,44,'Aion Y','SUV',76.0,610,4100000),
(50,45,'Marvel R','SUV',70.0,505,4200000),
(51,46,'eπ 007','Sedan',82.0,650,4600000),
(52,47,'Arcfox Alpha T','SUV',94.0,653,5000000),
(53,48,'Ora Good Cat','Hatchback',63.0,500,2800000),
(54,49,'C11','SUV',90.0,650,4700000),
(55,50,'Seres 5','SUV',80.0,500,4300000),
(56,51,'e-208','Hatchback',50.0,400,2900000),
(57,52,'e-C4','SUV',54.0,420,3100000),
(58,53,'Mokka Electric','SUV',50.0,405,3300000),
(59,54,'Mini Cooper SE','Hatchback',32.6,270,4200000),
(60,55,'I-PACE','SUV',90.0,470,11000000),
(61,56,'Range Rover Electric','SUV',117.0,650,25000000),
(62,57,'Bentayga EV','SUV',120.0,620,32000000),
(63,58,'Spectre','Coupe',102.0,530,75000000),
(64,59,'Grecale Folgore','SUV',105.0,500,21000000),
(65,60,'SF90 EV','Sports',110.0,480,52000000),
(66,61,'Revuelto','Sports',101.0,460,62000000),
(67,62,'500e','Hatchback',42.0,320,2500000),
(68,63,'Tonale Plug-in','SUV',15.5,600,4500000),
(69,64,'Bugatti EV','Sports',120.0,550,80000000),
(70,65,'DS 3 E-Tense','SUV',54.0,420,3400000),
(71,66,'Cupra Born','Hatchback',77.0,540,3700000),
(72,67,'Tavascan','SUV',82.0,560,4900000),
(73,68,'Gemera EV','Sports',125.0,700,150000000),
(74,69,'Spyker EV','Sports',95.0,500,35000000),
(75,70,'Emily GT','Sedan',90.0,600,6800000),
(76,71,'eMAS 7','SUV',70.0,500,3200000),
(77,72,'Perodua EV','Hatchback',45.0,350,1800000),
(78,73,'T10X','SUV',88.0,550,4500000),
(79,74,'Owl','Sports',64.0,450,18000000),
(80,75,'Airtrek EV','SUV',69.9,520,3800000),
(81,76,'Solterra','SUV',71.4,530,4500000),
(82,77,'eVX','SUV',60.0,550,2200000),
(83,78,'MX-30 EV','SUV',35.5,260,2800000),
(84,79,'D-Max EV','Pickup',66.9,420,3800000),
(85,80,'Rocky e-Smart','SUV',45.0,360,2100000),
(86,81,'VF e34','SUV',42.0,318,2400000),
(87,82,'Hongguang Mini EV','Hatchback',26.5,300,650000),
(88,83,'U5','SUV',63.0,503,3300000),
(89,84,'001','Sedan',100.0,741,6200000),
(90,85,'L7 Sedan','Sedan',90.0,615,5800000),
(91,86,'Alpha S','Sedan',94.0,708,5600000),
(92,87,'Free','SUV',106.0,631,6700000),
(93,88,'Neta U','SUV',68.0,500,3100000),
(94,89,'Ei5','Wagon',61.0,501,2900000),
(95,90,'KiWi EV','Hatchback',31.9,305,950000),
(96,91,'RZ 450e','SUV',71.4,440,7200000),
(97,92,'QX Inspiration','SUV',87.0,600,6800000),
(98,93,'ZDX','SUV',102.0,500,7500000),
(99,94,'Scania Electric Bus','Bus',330.0,350,15000000),
(100,95,'MAN eTGX','Truck',450.0,600,18500000);

select *from Models;



-- xxxxxxxxxxxxxxxxxxxxxxxxxxxx States table 3. xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx--
create table States(
state_id INT PRIMARY KEY,
state_name varchar(100),
population BIGINT
);
 alter table States MODIFY COLUMN region VARCHAR(50);


INSERT INTO States(state_id,state_name,region) VALUES
(1,'Maharastra','West'),
(2,'Gujrat','West'),
(3,'Karnataka','South'),
(4,'Tamil Nadu','South'),
(5,'Kerala','South'),
(6,'Delhi','North'),
(7,'Panjab','North'),
(8,'Haryana','North'),
(9,'Rajasthan','North'),
(10,'Uttar Pradesh','North'),
(11,'Madhya Pradesh','Central'),
(12,'Bihar','East'),
(13,'West Bengal','East'),
(14,'Odisha','East'),
(15,'Assam','North East'),
(16,'Telangana','South'),
(17,'Andra Pradesh','South'),
(18,'Goa','West'),
(19,'Chhattigarh','Central'),
(20,'Jharkhand','East');
INSERT INTO States(state_id,state_name,region) VALUES
(21,'Arunachal Pradesh','North East'),
(22,'Manipur','North East'),
(23,'Meghalaya','North East'),
(24,'Mizoram','North East'),
(25,'Nagaland','North East'),
(26,'Sikkim','North East'),
(27,'Tripura','North East'),
(28,'Uttarakhand','North'),
(29,'Himachal Pradesh','North'),
(30,'Jammu and Kashmir','North'),
(31,'Ladakh','North'),
(32,'Chandigarh','North'),
(33,'Puducherry','South'),
(34,'Andaman and Nicobar Islands','South'),
(35,'Dadra and Nagar Haveli and Daman and Diu','West'),
(36,'Lakshadweep','South'),
(37,'EV Zone Mumbai','West'),
(38,'EV Zone Pune','West'),
(39,'EV Zone Nagpur','Central'),
(40,'EV Zone Nashik','West'),
(41,'EV Zone Surat','West'),
(42,'EV Zone Vadodara','West'),
(43,'EV Zone Rajkot','West'),
(44,'EV Zone Bengaluru Urban','South'),
(45,'EV Zone Mysuru','South'),
(46,'EV Zone Hubballi','South'),
(47,'EV Zone Chennai Metro','South'),
(48,'EV Zone Coimbatore','South'),
(49,'EV Zone Madurai','South'),
(50,'EV Zone Kochi Metro','South'),
(51,'EV Zone Thiruvananthapuram','South'),
(52,'EV Zone Hyderabad Metro','South'),
(53,'EV Zone Warangal','South'),
(54,'EV Zone Vijayawada','South'),
(55,'EV Zone Visakhapatnam','South'),
(56,'EV Zone Delhi NCR','North'),
(57,'EV Zone Noida','North'),
(58,'EV Zone Gurugram','North'),
(59,'EV Zone Jaipur Metro','North'),
(60,'EV Zone Lucknow Metro','North'),
(61,'EV Zone Kanpur','North'),
(62,'EV Zone Patna Metro','East'),
(63,'EV Zone Ranchi Metro','East'),
(64,'EV Zone Bhubaneswar','East'),
(65,'EV Zone Kolkata Metro','East'),
(66,'EV Zone Siliguri','East'),
(67,'EV Zone Guwahati Metro','North East'),
(68,'EV Zone Imphal','North East'),
(69,'EV Zone Agartala','North East'),
(70,'EV Zone Shillong','North East'),
(71,'EV Zone Bhopal Metro','Central'),
(72,'EV Zone Indore','Central'),
(73,'EV Zone Gwalior','Central'),
(74,'EV Zone Raipur Metro','Central'),
(75,'EV Zone Bilaspur','Central'),
(76,'EV Zone Panaji','West'),
(77,'EV Zone Aurangabad','West'),
(78,'EV Zone Amravati','Central'),
(79,'EV Zone Jodhpur','North'),
(80,'EV Zone Udaipur','North');

select *from States;
truncate table States;



-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxx Sales table 4.-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx-
create table Sales(
sale_id INT PRIMARY KEY,
model_id INT,
state_id INT,
sale_date DATE,
units_sold INT,
revenue DECIMAL(15,2),
FOREIGN KEY(model_id)
REFERENCES Models(model_id),
FOREIGN KEY(state_id)
REFERENCES States(state_id)
);

truncate table Sales;

INSERT INTO Sales(sale_id,model_id,state_id,sale_date,units_sold,revenue) VALUES
(201,1,1,'2025-01-15',120,192000000),
(202,2,2,'2025-01-18',80,72000000),
(203,3,3,'2025-02-05',60,102000000),
(204,4,4,'2025-02-15',50,115000000),
(205,5,5,'2025-03-01',40,136000000),
(206,6,6,'2025-03-10',55,132000000),
(207,7,7,'2025-03-15',25,162500000),
(208,8,8,'2025-04-05',70,315000000),
(209,9,9,'2025-04-12',18,131400000),
(210,10,10,'2025-04-20',10,155000000),
(211,11,11,'2025-05-02',15,180000000),
(212,12,12,'2025-05-10',22,125400000),
(213,13,13,'2025-05-18',30,90000000),
(214,14,14,'2025-06-01',18,90000000),
(215,15,15,'2025-06-10',16,67200000),
(216,16,16,'2025-06-15',21,79800000),
(217,17,17,'2025-06-20',17,93500000),
(218,18,18,'2025-07-01',25,122500000),
(219,19,19,'2025-07-10',8,144000000),
(220,20,20,'2025-07-15',5,100000000),
(221,21,21,'2025-08-01',18,129600000),
(222,22,22,'2025-08-03',15,114000000),
(223,23,23,'2025-08-05',30,156000000),
(224,24,24,'2025-08-06',25,140000000),
(225,25,25,'2025-08-08',28,134400000),
(226,26,26,'2025-08-10',20,118000000),
(227,27,27,'2025-08-12',24,146400000),
(228,28,28,'2025-08-14',18,120600000),
(229,29,29,'2025-08-15',22,121000000),
(230,30,30,'2025-08-17',14,114800000),
(231,31,31,'2025-08-18',6,108000000),
(232,32,32,'2025-08-20',10,70000000),
(233,33,33,'2025-08-22',16,83200000),
(234,34,34,'2025-08-24',21,94500000),
(235,35,35,'2025-08-25',18,75600000),
(236,36,36,'2025-08-27',120,19800000),
(237,37,37,'2025-08-28',135,23625000),
(238,38,38,'2025-08-30',35,42000000),
(239,39,39,'2025-09-01',95,17100000),
(240,40,40,'2025-09-03',110,52800000),
(241,41,41,'2025-09-05',8,76000000),
(242,42,42,'2025-09-06',26,22100000),
(243,43,43,'2025-09-08',30,27000000),
(244,44,44,'2025-09-10',150,14250000),
(245,45,45,'2025-09-12',140,14700000),
(246,46,46,'2025-09-14',160,14400000),
(247,47,47,'2025-09-15',40,144000000),
(248,48,48,'2025-09-17',32,124800000),
(249,49,49,'2025-09-18',38,155800000),
(250,50,50,'2025-09-20',24,100800000),
(251,51,51,'2025-09-22',20,92000000),
(252,52,52,'2025-09-24',26,130000000),
(253,53,53,'2025-09-25',48,134400000),
(254,54,54,'2025-09-27',27,126900000),
(255,55,55,'2025-09-29',22,94600000),
(256,56,56,'2025-10-01',42,121800000),
(257,57,57,'2025-10-03',34,105400000),
(258,58,58,'2025-10-05',29,95700000),
(259,59,59,'2025-10-06',18,75600000),
(260,60,60,'2025-10-08',12,132000000),
(261,61,61,'2025-10-10',8,200000000),
(262,62,62,'2025-10-12',6,192000000),
(263,63,63,'2025-10-14',5,375000000),
(264,64,64,'2025-10-15',10,210000000),
(265,65,65,'2025-10-17',12,624000000),
(266,66,66,'2025-10-19',8,496000000),
(267,67,67,'2025-10-21',55,137500000),
(268,68,68,'2025-10-22',20,90000000),
(269,69,69,'2025-10-24',3,240000000),
(270,70,70,'2025-10-26',25,85000000),
(271,71,71,'2025-10-28',30,111000000),
(272,72,72,'2025-10-29',18,88200000),
(273,73,73,'2025-11-01',2,300000000),
(274,74,74,'2025-11-03',4,140000000),
(275,75,75,'2025-11-05',16,108800000),
(276,76,76,'2025-11-07',28,89600000),
(277,77,77,'2025-11-09',42,75600000),
(278,78,78,'2025-11-11',24,108000000),
(279,79,79,'2025-11-13',7,126000000),
(280,80,80,'2025-11-15',20,76000000);

select *from Sales;



-- xxxxxxxxxxxxxxxxxxxxxxxxx charging station 5.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx--
create table Charging_Station(
station_id INT PRIMARY KEY auto_increment,
state_id INT,
station_name varchar(100),
charger_type varchar(50),
total_ports INT,
FOREIGN KEY(state_id)
REFERENCES States(state_id)
);

INSERT INTO Charging_Station(station_id,state_id,station_name,charger_type,total_ports) VALUES
(101,1,'Mumbai Fast Charge','DC',12),
(102,2,'Ahmedabad EV Hub','DC',10),
(103,3,"Banglore Green",'AC',15),
(104,4,"Chennai Charge",'DC',14),
(105,5,'Kochi EV Point','Ac',8),
(106,6,'Delhi Supercharge','DC',20),
(107,7,'Ludiana Charge','AC',6),
(108,8,'Gurgaon EV Hub','DC',12),
(109,9,'Jaipur Charge','AC',9),
(110,10,'Lacknow Fast EV','DC',10),
(111,11,'Bhopal Green','AC',7),
(112,12,'Patana EV Station','DC',8),
(113,13,'Kolkata Charge','DC',14),
(114,14,'Bhubaneswar EV','AC',6),
(115,15,'Guwahati EV Hub','DC',7),
(116,16,'Hyderabad Charge','DC',15),
(117,17,'Vizag Charge','AC',10),
(118,18,'Goa Beach Charge','DC',5),
(119,19,'Raipur EV Hub','AC',7),
(120,20,'Ranchi EV Station','DC',8),
(121,21,'Itanagar EV Hub','DC',8),
(122,22,'Imphal Green Charge','AC',10),
(123,23,'Shillong Fast Charge','DC',12),
(124,24,'Aizawl EV Station','AC',6),
(125,25,'Kohima Super Charge','DC',8),
(126,26,'Gangtok Charge Point','AC',7),
(127,27,'Agartala EV Hub','DC',9),
(128,28,'Dehradun Charge Hub','DC',15),
(129,29,'Shimla EV Station','AC',8),
(130,30,'Srinagar Charge Point','DC',10),
(131,31,'Leh Solar Charge','DC',6),
(132,32,'Chandigarh Smart EV','DC',14),
(133,33,'Puducherry EV Plaza','AC',10),
(134,34,'Port Blair Charge','DC',5),
(135,35,'Silvassa EV Point','AC',8),
(136,36,'Lakshadweep Charge','DC',4),
(137,37,'Mumbai Central EV','DC',20),
(138,38,'Pune Hyper Charge','DC',18),
(139,39,'Nagpur Green Charge','AC',12),
(140,40,'Nashik EV Hub','DC',10),
(141,41,'Surat Fast Charge','DC',16),
(142,42,'Vadodara EV Point','AC',12),
(143,43,'Rajkot Charge Station','DC',10),
(144,44,'Bengaluru Tech Charge','DC',22),
(145,45,'Mysuru EV Plaza','AC',10),
(146,46,'Hubballi Charge Hub','DC',8),
(147,47,'Chennai Metro Charge','DC',20),
(148,48,'Coimbatore EV Point','AC',14),
(149,49,'Madurai Green Hub','DC',9),
(150,50,'Kochi Smart Charge','DC',15),
(151,51,'Trivandrum EV Station','AC',11),
(152,52,'Hyderabad Hyper Charge','DC',24),
(153,53,'Warangal EV Point','AC',8),
(154,54,'Vijayawada Fast EV','DC',13),
(155,55,'Vizag Coastal Charge','DC',16),
(156,56,'Delhi NCR Super Hub','DC',30),
(157,57,'Noida EV Center','DC',18),
(158,58,'Gurugram Smart Charge','DC',20),
(159,59,'Jaipur Pink Charge','AC',12),
(160,60,'Lucknow Express Charge','DC',15),
(161,61,'Kanpur EV Hub','AC',10),
(162,62,'Patna Green Energy','DC',14),
(163,63,'Ranchi Smart EV','AC',9),
(164,64,'Bhubaneswar Fast Charge','DC',13),
(165,65,'Kolkata Mega Charge','DC',25),
(166,66,'Siliguri EV Point','AC',8),
(167,67,'Guwahati Hyper Hub','DC',16),
(168,68,'Imphal East Charge','AC',7),
(169,69,'Agartala Smart Charge','DC',9),
(170,70,'Shillong Eco Charge','AC',8),
(171,71,'Bhopal Hyper EV','DC',17),
(172,72,'Indore Smart Charge','DC',18),
(173,73,'Gwalior Charge Point','AC',9),
(174,74,'Raipur Fast EV','DC',15),
(175,75,'Bilaspur Green Charge','AC',8),
(176,76,'Panaji Beach Charge','DC',10),
(177,77,'Aurangabad EV Hub','AC',12),
(178,78,'Amravati Charge Point','DC',9),
(179,79,'Jodhpur Desert Charge','DC',11),
(180,80,'Udaipur Lake Charge','AC',10);

select *from Charging_Station;
truncate table Charging_Station;




-- mock question -----------------------------------
-- waq to display top 2 models for each states --
select st_id,model_name,
from Models
where model_id 
group by states

limit 2;


-- waq to display order_id,cust_name,city and sales for orders having sales >500000
select order_id,Customer_name,city,Sales from Sales
where  sales>500000;
-- waq to disp[lay sales order rank 11 to 20th by sales amount
select order_id,Customer_name,sales from sales
limit 9 offset 10;

select order_id,Customer_name















