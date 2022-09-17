/Q1
/Remove any attributes from the following list:
/list:asc 2 3 4 1 5 6 2

/solution 1
list:asc 2 3 4 1 5 6 2
`#list

/Q2
/Use the scan adverb to return the Times Tables from 1 to 10
\
1  2  3  4  5  6  7  8  9  10
2  4  6  8  10 12 14 16 18 20
3  6  9  12 15 18 21 24 27 30
4  8  12 16 20 24 28 32 36 40
5  10 15 20 25 30 35 40 45 50
6  12 18 24 30 36 42 48 54 60
7  14 21 28 35 42 49 56 63 70
8  16 24 32 40 48 56 64 72 80
9  18 27 36 45 54 63 72 81 90
10 20 30 40 50 60 70 80 90 100
/

/solution 1
(1+til 10) */:(1+til 10)

/solution 2
{x+(1+ til 10)}\[9;1+til 10]


/Q3
/ Write a function which subtracts the sum of the first n square numbers (12 + 22 + ... + n2) from 
/ the square of the sum of the first n numbers (1 + 2 + ... + n)(1 + 2 + ... + n)

/solution 1
f:{((x*(x+1)%2)*(x*(x+1)%2))-((x*(x+1)%2)*(1+x*2)%3)}

/solution 2
{s:(1+ til x);(sum s*sum s)-sum (s*s)}

/Q4
/Generate a 10 x 10 grid of random numbers between –9 and 9
/solution 1
(10 10)#-9+100?19

/solution 2
10 cut -9+100?19

/Q5
/For the grid in question 4, perform the following steps in order:
/Increase every number in even numbered columns (0, 2, 4 ...) by 1;
/Double every number in odd numbered rows (1, 3, 5 …)

/solution 1
m:(10 10)#-9+100?19;m[(til 10) where 0 = (til 10) mod 2]+:1;m[(til 10) where 1 = (til 10) mod 2]*:2

/solution 2
m[;(where not (til 10) mod 2)]+:1
m[(where (til 10) mod 2);]*:2

/Q6
/Find the largest palindrome that can be made from the product of two 3-digit numbers.

/solution 1
max{g:raze (900+til x)*/:900+til x ;h:string each g;g where (h~'reverse each h)}100

/solution 2
l:distinct raze (900+ til 100)*/:(900+ til 100)
max l where (string each l)~'reverse each string each l

/solution 3
{a:distinct raze b*/:b:(900+ til 100);max a where (string each a)~'reverse each string each a}[]

