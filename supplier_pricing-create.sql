create table supplier_pricing(
price_id int primary key auto_increment,
pro_id int,
sup_id int,
sup_price int default 0,
foreign key (pro_id) references product(pro_id),
foreign key (sup_id) references supplier(sup_id)
);