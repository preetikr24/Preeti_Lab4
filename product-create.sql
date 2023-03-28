create table product (
pro_id int primary key auto_increment,
pro_name varchar(20) not null default "dummy",
pro_desc varchar(60),
cat_id int,
foreign key (cat_id) references category(cat_id)
);