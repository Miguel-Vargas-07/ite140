### Joins
- All join tables can only proccess 2 tables at a time
- Join order impacts performance
- as more join tbales need to be evaluated, it becomes an e3quaiton of tables factorial

### Nested Loops
- Driving query - outside query
- The outer query fetches information from a table, and the nested query analyzes the selected rows from the first query
- N+1 select problem- the driving query gets information, then the second query processes that information again (N being  the driving query)
- Employee example | the outer query gets the employees last name if it has “WIN”, then the second query takes this - information through(.getResultList), turns it into I in a for loop, then gets the sales records for all of the values provided by the outer query
- A function- based index works like the driving query, while a concatenated index works like the second/inner query
A join statement is quicker than a nested loop, therefore a solution being an index on emp sales using an index on emp names
- Eager fetching- ORM tool that automatically joins table B to table A when only table A is referenced
- Eager fetching is not good because of how static it is, in some scenarios table B is not needed when information from table A is being called
