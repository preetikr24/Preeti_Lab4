CREATE DEFINER=`root`@`localhost` PROCEDURE `display_supplyratings`()
BEGIN
select report.sup_id, report.supname, report.Average,
case
  when report.Average = 5 then "Excellent Service"
  when report.Average >4 then "good Service"
  when report.Average > 2 then "Average Service"
  else "poor service"
end as Type_of_service from
(
   select final.sup_id, supplier.supname, final.Average from
   (
		select test2.sup_id, sum(test2.rat_ratstars)/count(test2.rat_ratstars) as Average from
        (
           select supplier_pricing.sup_id, test.ord_id, test.rat_ratstars from supplier_pricing
           inner join
              (
                  select order_table.price_id, rating.ord_id, rating.rat_ratstars from order_table
                  inner join rating on rating.ord_id = order_table.ord_id
			   ) as test on test.price_id = supplier_pricing.price_id
		)as test2 group by supplier_pricing.sup_id
	) as final
    inner join
    supplier where final.sup_id = supplier.sup_id
)as report;
END