create database as6
use as6

create table author(
au_id int identity primary key, 
au_name nvarchar(50) not null
);

create table company(
c_id int identity primary key,
c_name nvarchar(50) not null,
c_add nvarchar(50) not null
);

create table categorys(
cat_id int identity primary key,
cat_name nvarchar(50) not null,
);

create table books (
b_id varchar(6) primary key,
cat_id int,
au_id int,
c_id int,
b_name nvarchar(50) not null,
price decimal not null
foreign key (cat_id) references categorys(cat_id),
foreign key (au_id) references author(au_id),
foreign key (c_id) references company(c_id)
);

create table details(
d_id int identity,
b_id varchar(6),
quantity int not null
primary key (d_id,b_id)
foreign key (b_id) references books(b_id)
);