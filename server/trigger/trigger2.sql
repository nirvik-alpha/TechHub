CREATE OR REPLACE trigger updateProduct2

AFTER update on product

for each ROW

BEGIN

	INSERT into product2 values(:old.product_id,:old.product_name,:old.price,:old.quantity,:old.product_type);

end;
/

commit;