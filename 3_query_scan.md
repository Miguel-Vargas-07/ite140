### Sequential Scan 
- When the query asks for information that is irrelevenant to the pk, the query will be executed looking only at the heap

- SELECT first_name FROM employees;

- this query goes to the table and find the first_name of the employees
### Index Scan 
- When the query asks for information that requires the use of the pk which is accessed through the tree, and also requires information from the table that is separate from the pk

- SELECT * FROM employees WHERE employee_id = 100;

- This query traverses the B-tree to find employee_id 100, and then it goes to the heap to find the rest of the coloumns respective to employee_id 100
### Index Only Scan 
- When the query asks for information that is specific to the pk only, it will only go traverse through the b-tree

- SELECT COUNT (*) FROM employees

- This query traverses the B-tree and and counts all of the nodes in the tree

