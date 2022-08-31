-- Insert statement for customer
INSERT INTO "Customer"(
	"customer_id",
	"first_name",
	"last_name",
	"address",
	"billing_info"
) VALUES (
	1,
	'Ryan',
	'Rhoades',
	'3302 W Main St Chicago, Il 60618',
	'4242 4242 4242 4242 562 07/25'
);
-- Insert statement for Brand
INSERT INTO "Brand"(
	"vendor_id",
	"brand_name",
	"contact_number",
	"address"
) VALUES (
	1,
	'Bath and Body Works',
	'1 (800)-756-5005',
	'123 Main St Chicago, Il 60601'	
);

-- Insert Statement for Product
INSERT INTO "Product"(
	"SKU",
	"price",
	"prod_name",
	"vendor_id"
) VALUES (
	1,
	25.00,
	'Pumpkin Carving',
	1
);

-- Insert for Inventory
INSERT INTO "Inventory" (
	"inventory_id",
	"SKU",
	"product_amount"
) VALUES(
	1,
	1,
	50
);

-- Insert Statement for Order
INSERT INTO "Order"(
	"order_id",	
	"sub_total",
	"total_cost",
	"inventory_id"
) VALUES (
	1,
	25.00,
	27.50,
	1
);

--Insert statement for Cart
INSERT INTO "Cart" (
	"cart_id",
	"customer_id",
	"order_id"	
) VALUES (
	1,
	1,
	1
);

select * from "Customer";
select * from "Brand";
select * from "Product";
select * from "Inventory";
select * from "Cart";
