### Index of leaf nodes
- you can't store data sequentially, you use logical order
- a node has links to two entries
- logical order is established with a doubly linked list
- doubly linked list = containers
- leaf nodes are stored in database blocks
- index order is maintained in leaf nodes, and leaf nodes are stored in doubly linked list


### The B-tree
- index leaf nodes are not in a logical position according to the index order
- doubly linked list puts order between the nodes, while the root and branch nodes allow easy access to sort through the linked list
- a branch layer is built of leaf nodes made of branch nodes
- distance between the root node and leaf node is the same everywhere
- nodes act as primary keys
- each layer of the tree is in a way put in a merge sort thinking proccess, depeinding on the value of the rowid/node, the computer knows to go up or down
- tree traversal = first power inf indexing
- takes log(n) time 

### Slow indexes part 1
- contradiction to the tree traversal is reffered to as degenerated index
- if there are 2 identical rowid, the tree traversal must go in full depth in both routes
- An index lookup requires three steps: (1) the tree traversal; (2) following the leaf node chain; (3) fetching the table data
(ORACLE)
- INDEX UNIQUE SCAN - if only 1 possible value exist in the tree, this query is ran, more effective
- INDEX RANGE SCAN - query that checks leaf node chains under the assumption there is repeated entries
- TABLE ACCESS BY INDEX ROWID - retrieves row from the table(often performed for matched records post index scan)



