CREATE OR REPLACE trigger updateProduct1

AFTER update on product

for each ROW

BEGIN

	INSERT into product1 values(:old.product_id,:old.product_name,:old.price,:old.quantity,:old.product_type);

end;
/

commit;
