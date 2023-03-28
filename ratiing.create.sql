create table rating(
rat_id int primary key auto_increment,
ord_id int,
rat_ratstars int not null,
foreign key (ord_id) references order_table(ord_id)
);