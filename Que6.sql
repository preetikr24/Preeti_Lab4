select cat.cat_id, cat.cat_name, prod.pro_name, prod.pro_name from
category as cat inner join product as prod on cat.cat_id = prod.pro_id
inner join (select * from supplier_pricing group by pro_id having min(sup_price)) as sp
 on prod.pro_id = sp.pro_id;

