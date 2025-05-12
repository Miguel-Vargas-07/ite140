### Django indexes
- When I added the "db_index=True" to my name coloumn in User, django made 2 indexes for me 

- db_user_name
- db_user_name_like

- The first index serves as a tool to search for exact matches to the varchar in the column
- The second index serves as a tool to search for LIKE matches to the varchar column

### Standard vs __iexact
- The standard query does an Index Scan, while the __iexact query does a heap scan
- The standard query has a log() runtime, while the __iexact has a linear runtime

###### standard query
- q7 = User.objects.filter(name="Dan").count()

###### __iexact query
- q8 = User.objects.filter(name__iexact="Dan").count()

#### Comparison
- The main difference between the two queries is that one is able to use the index and the other isn't. This comparison shows the results of using vs not using an index on runtime.



 
### test 1 with 2,500 records

- average time for query that uses index: 0.01 seconds
- average time for query that does not use index: 0.02 seconds

### test 2 with 5,000 records

- average time for query that uses index: 0.01 seconds
- average time for query that does not use index: 0.038 seconds

### test 3 with 10,000 records

- average time for query that uses index: 0.011 seconds
- average time for query that does not use index: 0.056 seconds

### test 4 with 100,000 records 

- average time for query that uses index: 0.032 seconds
- average time for query that does not use index: 0.726 seconds


### Takeaways & warning
- Overall, my takeaway from this activity is that being able to use an index on columns that will be called up a lot is very useful. The almost constant runtime of the indexed query makes up for the storage that the index takes up. 
- My advice to developers who are considering using the __iexact query tool is to first check if it is a case insensitive search is really neccessary. If not, using a regular query with an index is way more efficient, especially for larger queries and tables. 
