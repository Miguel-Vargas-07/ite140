### Primary keys 
- if there is a pk, an index statemnet is made even without a create index statement
- the where clause cannot match multiple rows because prior to that operation, the query looks at the b-tree and gets only 1 index as it is a list of pk's
- The only thing that fcan make a query slow is if the index has to reference the table on multiple occasions

### Concatenated keys 
- Whenever a query uses the complete primary key, the database can use an INDEX UNIQUE SCAN
- when only using a partial of the pk, the query must go through the whole table rather than using an index
- concatenated index- b-tree keeping indedx data in a list with a pk of more than one coloumn
- instead of making a new indedx for subsidary_id, the solution is to make the subsidary_id the primary critereon rather than employee_id, this allows the b-tree to stay in logical order
- reversed index
- This uses index range scan as all nodes are not guarenteed to be unique
- this allows the query to go through the index, locate the indexes in the heap, and call the rows respective to the heap
- an index made of a mutli coloumn pk might be less efficient in cost, but is able to store more data 

### Slow indexes, part II
- how and why database proccess of index
- query optimizer- responsible for selecting the right index if an index is needed at all
- having the separate index(employee_pk) was slower than full table access
- The optimizer estimates which sort of look up will have to call the least amount of rows, from there it selects what acess to use
- a slow index is made up of a wide index range, and multiple rows that need to be selected
- making an index on the last name allowed the query to not have to do a full table scan in order to pull up the rows
- An index range scan is almost always more efficient than a full table scan because it allows for only a few rows to have to be pulled rather than having to pull out each indivudal record for comparing
-


