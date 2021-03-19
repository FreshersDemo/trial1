create database crackers1;
use crackers1;

create table users(name varchar(30), emailid varchar(30),password varchar(30));
insert into users values("Nivetha","nivisasi@gmail.com","Nivisasi37");
truncate table users;
drop table users;
select *from users;
create table crackers(crackersid INT NOT NULL AUTO_INCREMENT,crackersname VARCHAR(100) NOT NULL,
   crackerscategory VARCHAR(50) NOT NULL,crackersprice double NOT NULL,
   PRIMARY KEY ( crackersid ));
drop table crackers;
insert into crackers (crackersname, crackerscategory,crackersprice) 
values('Red Bijili','Loose Crackers',50),('Red Bijili 100','Loose Crackers',80),
('Stripped Bijili','Loose Crackers',120),
('Kuruvi','Sound Crackers',20),('Laxmi','Sound Crackers',50),
('2 Sound Crackers','Sound Crackers',120),('3 Sound Crackers','Sound Crackers',160),
('100 Wala','Garlands',120),('200 Wala','Garlands',180),('1000 Wala','Garlands',700),('5000 Wala','Garlands',1800),
('10000 Wala','Garlands',3000),('12cm Electric Sparklers','Sparklers',50),('15cm Green Sparklers','Sparklers',60),
('15cm Red Sparklers','Sparklers',60),('Colour Sparklers','Sparklers',90),('Neon Sparklers','Sparklers',160),
('Bomb Rocket','Rockets',220),('Rainbow Rocket','Rockets',180),
('Colour Rocket','Rockets',120),('Triple Whistling Rocket','Rockets',320),
('Flower Pot Small','Flower Pots',60),('Flower Pots Special','Flower Pots',120),
('Flower Pots Deluxe','Flower Pots',320),
('Flower Pots Giant','Flower Pots',90),('Color Koti','Flower Pots',150),
('Chakkar Ashok','Ground Chakkars',90),('Chakkar Big','Ground Chakkars',60),
('Chakkar Deluxe','Ground Chakkars',120),('Chakkar Special','Ground Chakkars',180),
('Ganga Jamuna','Fountains',120),('Showers','Fountains',240),('TriColour Fountains','Fountains',400),
('Richie Rich','Fountains',50),('King Fountains','Fountains',40),
('7 Shots','Repeating Shots',250),('33 Shots','Repeating Shots',600),
('60 shots','Repeating Shots',1500),('Cracking Flower','Repeating Shots',870);
select * from crackers;

create table cart(cartcrackersid INT NOT NULL AUTO_INCREMENT, cartemailid varchar(30) not null,
	cartcrackersname VARCHAR(100) NOT NULL, cartcrackerscategory VARCHAR(40),
	cartcrackersprice double NOT NULL,cartQuantity int,PRIMARY KEY ( cartcrackersid ));
select * from cart;
drop table cart;