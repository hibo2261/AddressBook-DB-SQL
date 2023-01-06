
create database AddressBook;


create table AddressBook
(firstName varchar(50), lastName varchar(50), address varchar(50), city varchar(50),
state varchar(50), zip varchar(50), phoneNumber varchar(50), email varchar(50));


insert into addressbook values
("nikhil", "kapure", "vani", "dimapur", "maharashtra", "415315", "9405681097", "nikhil13@gmail.com"),
("tukaram", "sonje", "ghoti", "nashik", "maharashtra", "415509", "9405973486", "tukaram67@gmail.com"),
("yash", "ingle", "timle", "agra", "uttar pradesh", "283102", "9405375964", "yassh22@gmail.com"),
("reyansh", "bhavsar", "gawane", "navapur", "maharashtra", "415316", "9405681234", "reyansh226@gmail.com"),
("ganesh", "surve", "junagadh", "gorakpur", "uttar pradesh", "283105", "9484761997", "surve89@gmail.com"),
("dinkar", "newale", "hareshwar", "noida", "uttar pradesh", "201301", "9896481097", "dinkar288@gmail.com");

update addressbook set phoneNumber = "9632170939", email = "tukaram2345@gmail.com" where firstName = "tukaram";
update addressbook set phoneNumber = "9178339712" where firstName = "dinkar" and lastName = "newale";

delete from addressbook where firstName = "reyansh";

select * from addressbook where city = "gorakpur";
select * from addressbook where state = "maharashtra";
select * from addressbook where city = "gorakpur" or state = "uttar pradesh";

select city, count(firstName) from addressbook group by city;
select state, count(firstName) from addressbook group by state;

select * from addressbook where city = "agra" order by firstName;

alter table addressbook add type varchar(50);

update addressbook set type = "family" where firstName = "dinkar" or firstName = "ganesh";
update addressbook set type = "friends" where firstName = "yash" or firstName = "tukaram" or firstName = "ganesh";
update addressbook set type = "office" where firstName = "nikhil" or firstName = "abhishek";

select type, count(firstName) from addressbook group by type;

insert into addressbook values("family", "nilesh", "gurav", "sahara", "agra", "uttar pradesh", "283105", "9484761997", "nilesh15@gmail.com"),
("friends", "nilesh", "gurav", "sahara", "agra", "uttar pradesh", "283105", "9484761997", "nilesh15@gmail.com");