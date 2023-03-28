select sup.sup_id, supname,sup_city, sup_phone from supplier as sup inner join 
(select * from supplier_pricing group by sup_id having count(sup_id) > 1) as sp 
on
sup.sup_id = sp.sup_id;