create database BusReservation

create table bus_master (
bid varchar(10) primary key,
bname varchar(30) not null,
type varchar(10) check (type in ('Normal','Sleeper')),
ac varchar(3) not null,
number_booked_seats int not null,
max_seats int not null,
available_seats int not null,
rid varchar(10) not null,
booked_seats text
)

create table route (
rid varchar(10) primary key,
fare money not null,
destination varchar(20) not null,
source varchar(20) not null,
departure time not null,
arrival time not null,
)

alter table bus_master
add foreign key (rid) references route

create table passenger (
pid int primary key,
aid varchar(10),
bid varchar(10),
rid varchar(10),
pass_first_name varchar(20) not null,
pass_last_name varchar(20) not null,
pass_address text not null,
pass_sex char(1) check(pass_sex in ('M','F')),
pass_email varchar(max),
pass_phone1 varchar(11) not null,
pass_phone2 varchar(10),
username varchar(10),
booked_seats text,
travel_date varchar(max)
)

create table agent (
aid varchar(10) primary key,
agent_first_name varchar(20) not null,
agent_last_name varchar(20) not null,
agent_address text,
agent_sex char(1) check (agent_sex in ('M','F')),
agent_phone1 varchar(11) not null,
agent_phone2 varchar(10),
agent_email varchar(50),
company varchar(20) not null,
commission float not null
)

alter table passenger
add foreign key (aid) references agent

alter table passenger
add foreign key (bid) references bus_master

alter table passenger
add foreign key (rid) references route

create table payment (
receipt_number int primary key,
pid int foreign key references passenger,
payment_date_time varchar(max),
amount money
)

create table login_master (
username varchar(10) primary key,
pasword varchar(10) not null,
secret_question varchar(30),
secret_answer varchar(30),
account_type varchar(6) check (account_type in('admin','member'))
)

alter table passenger
add foreign key (username) references login_master