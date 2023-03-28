select cus_name, pro_name, ord_id,ord_date from product as p,
supplier_pricing as sp, order_table as ord, customer as cus where
cus.cus_id = 2 and
cus.cus_id = ord.cus_id and
p.pro_id = sp.pro_id and
ord.price_id = sp.price_id;