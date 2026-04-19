CREATE TABLE products14 (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE sales14 (
    id INT,
    product_id INT,
    amount INT
);

INSERT INTO products14 VALUES
(1,'Telefon'), (2,'Noutbuk');

INSERT INTO sales14 VALUES
(1,1,600),
(2,1,400),
(3,2,300);

SELECT p.name, MAX(s.amount) AS max_sale
FROM products14 p
INNER JOIN sales14 s ON p.id = s.product_id
GROUP BY p.name
HAVING MAX(s.amount) > 500;
