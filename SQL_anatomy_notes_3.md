### Case Insensitive Search (UPPER and LOWER)
- making both sides of a where clause UPPER makes the search easier to get right in the event of case sensitivity
- Although there is an index, putting the UPPER statement would become a different value therefore invalidating an index of the original value
- function based index - index whose definition contains functions
- an FBI applies the function to an index (function(index))
- Example 
- CREATE INDEX emp_up_name 
     ON employees (UPPER(last_name))
- statistics on the FBI needed to be updated manually in order for the estimater to take into account the effectiveness of the new FBI