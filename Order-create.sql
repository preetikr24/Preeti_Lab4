create table order_table(
ord_id int primary key auto_increment,
ord_amount int not null,
ord_date date not null,
cus_id int,
price_id int,
foreign key (cus_id) references customer(cus_id),
foreign key (price_id) references supplier_pricing(price_id) 
);