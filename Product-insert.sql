insert into product(pro_name,pro_desc,cat_id) values 
("GTA V", "Windows 7 and above with i5 processor and 8GB RAM",(select cat_id from category where cat_name = "BOOKS" )),
("TSHIRT", "SIZE-L with Black, Blue and White variations",(select cat_id from category where cat_name = "CLOTHES")),
("ROG LAPTOP", "Windows 10 with 15inch screen, i7 processor, 1TB SSD",(select cat_id from category where cat_name = "ELECTRONICS")),
("OATS", "Highly Nutritious from Nestle",(select cat_id from category where cat_name = "GROCERIES")),
("HARRY POTTER", "Best Collection of all time by J.K Rowling",(select cat_id from category where cat_name = "BOOKS")),
("MILK", "1L Toned MIlk",(select cat_id from category where cat_name = "GROCERIES")),
("Boat Earphones", "1.5Meter long Dolby Atmos",(select cat_id from category where cat_name = "ELECTRONICS")),
("Jeans", "Stretchable Denim Jeans with various sizes and color",(select cat_id from category where cat_name = "CLOTHES")),
("Project IGI", "compatible with windows 7 and above",(select cat_id from category where cat_name = "GAMES")),
("Hoodie", "Black GUCCI for 13 yrs and above",(select cat_id from category where cat_name = "CLOTHES")),
("Rich Dad Poor Dad", "Written by RObert Kiyosaki",(select cat_id from category where cat_name = "BOOKS")),
("Train Your Brain", "By Shireen Stephen",(select cat_id from category where cat_name = "BOOKS"));