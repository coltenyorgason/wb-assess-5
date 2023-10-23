// PART 1

SELECT email FROM customers ORDER BY email ASC NULLS FIRST;
SELECT id FROM orders WHERE customer_id IN (SELECT (id) FROM customers WHERE fname='Elizabeth' AND lname='Crocker');
SELECT SUM(num_cupcakes) FROM orders WHERE processed ='f';
SELECT name, SUM(num_cupcakes) FROM cupcakes LEFT JOIN orders ON cupcakes.id = orders.cupcake_id GROUP BY name ORDER BY name ASC;
SELECT email, SUM(num_cupcakes) AS total FROM customers LEFT JOIN orders ON customers.id = orders.customer_id GROUP BY email ORDER BY total DESC;
SELECT fname, lname, email FROM customers JOIN orders ON orders.customer_id = customers.id JOIN cupcakes ON orders.cupcake_id = cupcakes.id WHERE pro
cessed ='t' AND name = 'funfetti' GROUP BY fname, lname, email;

