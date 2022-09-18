/Q1
/1.1 Write a function that returns only the names which contain exactly 3 vowels.
/1.2 Write a separate function to return only the names which contain no duplicate letters. 
/1.3 Finally, write one function which accomplishes both of these.

/solution 1
{x where 3=sum each x in "AEIOU"}names 
{x where(count each distinct each x)=count each x}names 
{x where(3=sum each x in "AEIOU")&(count each distinct each x)=count each 
x}names 

/Q2
/Write a function that takes a list and returns a list of lists, each sublist being the element from the first list followed by the number of times it occurs at this point in list:
/
f[`a`a`b`b`b`c`c`d`d`a`a`b`e`f]
`a 2
`b 3
`c 2
`d 2
`a 2
`b 1
`e 1
`f 1

\

/solution 1
{{(first x;count x)} each (where differ x)_x}

/Q3
/Write a function that takes a string and rotates it a user defined number of characters through the alphabet, for example:

/solution 1
f:{(.Q.a!y rotate .Q.a)x}

/Q4
/ Write a function which creates a dictionary with keys 0 – 9, where the value of each key is how often each digit occurs between zero and the number, n, (inclusive) where n is a variable.
\
q)f 1000
0| 193
1| 301
2| 300
3| 300
4| 300
5| 300
6| 300
7| 300
8| 300
9| 300

/

/solution 1
{count each group raze string til (x+1)}1000

/solution 2
{.Q.n!sum each raze each (.Q.n = \: (string til (x+1)))}1000

/Q5
/ Create an n by n matrix where coordinates, [i;j]=1 if i+j is even, and zero otherwise.
/solution 1
f:{m:{(1+til x)+/:til x};(m x) mod 2}

/solution 2
{((1+til x)+/:til x)mod 2}5

/solution 3
{x cut (x*x)#1 0j}5