# Chapter 3: Sorting

#### Qoute

"The Preston Sort Center is one of the biggest and most efficient booksorting facilities in the world. It’s run by the King County Library System,
which has begun a healthy rivalry with the similarly equipped New York
Public Library, with the title going back and forth over four closely
contested years."


- Herman Hollerith created the Hollerith Machine, this machine used punched manila cards to store nformation 

- Hollerith merged his firm with many others and created IBM

- "search engines should be name sort engines"

- The bigger the list, the more it takes to sort it

- On May 15, 2008, Bradáč
sorted a 52-card deck in just 36.16 seconds

- worst case performance is the most important to computer science

Algorithyms
-

- o(1) is constant 
- o(n) is linear 
- o(n^2) is quadratic 
- o(2^n) is exponential 

Sorts
-

- Bubble sort - comparing an object to its neighbor and moving them into their designated spot O(n^2)

- Insertion sort - moving an object to the middle of the list and putting the next either right or left of it 

- Mergesort - when you take two sorted list and you compare an object from each, you put the smaller one into the new list 
- Mergesort is linearythmic, it takes log (n) times to complete O(n log n)
- Bucket sort - grouping items from an unsorted chunk of data into categories O(nm)

Do you really need to sort your data?

# Chapter 4: Caching

Hard drives are about finding a balance between speed and capacity in todays market

what is caching
-

Caching is meant to anticipate data that should be stored in the short term because it will most likely be accessed again in the near future

Wilkes is the person who proposed the idea of dedicated storage for quick and easy access

"Moores law" - the number of transistors in a cpu would doouble every two year

memory law - a concpet that no matter how much the cpu was improved, it would be held back by the RAM

eviction policies - a system that adds and removes data into the cache

- memory hierarchy is like taking a bunch of books from the library that you know you will refer to on multiple occasions and put it on your desk

having a cache in a computer is like taking a trip once a week to the library and chosing the books you are most likely to use


Caching methods
-

-  Belady's algorithym is a hypothetical algorithym that knows exactly what you will use the fruthest from know in your cache and deletes it to make room for other data (Clairvoyant algorithym)

- Random eviction- adding new data to the cahce and overwriting old data at random

- FIFO - where you overwrite whatever ahs been sitting in the cahce the longest

- Least Recently used- evicting what item has gone the longest time being untouched

- LRU was found to be the fastest and performing the mostsimilarly to Belady's Algorithym

temporal locality- If a program has called for a piece of information once, it is likely to do so again



- content distribution networks(CDN)- caching but from a geographical standpoint having the cache data as close to the user as possible

- Noguchi's left sided insertion rule- place the most recently used file no matter the age of the file in the leftomost side of the file cabinet, and when searching for a file go from left to right

The human brain seems to use the LRU principle that is obeserved in many places throughout the world