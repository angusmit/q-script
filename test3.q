/Q1
/Given below table
@[`.;`a`b`c;:;{(1+x) + (til 5)}': [0 1 2]]
table:([]a:a;b:b;c:c)
table
/Write a query which selects the data from columns a and b in "table" where c is greater than or equal to 5, in functional form. Why might one need to use functional form?

/solution 1
?[`table; enlist ((';~;<);enlist `c;5);0b;(enlist `a`b)!(enlist `a`b)]
/solution 2
?[`table;enlist((';~:;<);`c;5);0b;(`a`b!`a`b)]

/Q2
/Write a function that generates a table of 100 random numbers between –5 and 5 and a column which indicates whether the number is positive, negative or zero, i.e:
/solution 1
tab:([] a: 100?(neg[1 +til 5],til 6))
tab:update b:`positive from tab where a>0
tab:update b:`zero from tab where a=0
tab:update b:`negative from tab where a<0

/solution 2
tab:{[a]([]a;b:(1 0 -1!`positive`zero`negative)signum a)}[-5+100?11]

/solution 3
update b:(1 0 -1!`positive`zero`negative)signum a from ([]a:-5+100?11)


/Q3
/Write a function that takes two dates as arguments and calculates the number of Sundays between them (including both dates).
/solution 1
f:{[start;end] weekday:{ `sat`sun`mon`tue`wed`thu`fri x mod 7}; sum `sun=weekday dates where 1=`dd$dates:start+til 1+end-start}

/solution 2
f: {[sd;ed]d:sd + til(ed+1)-sd;count where 1=d mod 7}

/Q4.1
/Create the following table, tab (*note the null values at rows 5 and 11).
/
a  b
----
0  0
1  1
2  2
3  3
4  4
5
6  0
7  1
8  2
9  3
10 4
11
12 0
13 1
14 2
\

/Starting from this table, complete the following actions to produce a table tab2 from tab: 
/Q4.2 - Where there is no b value in the table, add in the number 10.
/Q4.3 - Add a third column, c which contains the following value from column a – where no value is available, 100 should be placed in the column.
/Q4.4 - Finally, add a d column which expresses whether or not the a and b values are the same.


/solution 1
/Q4.1
tab:([] a: til 15;b:(15#til 6))
tab[5;`b]:0N
tab[11;`b]:0N

/Q4.2
tab2:update b:10 from tab where b=0N

/Q4.3
tab2:update c:next a from tab2
tab2:update c:100 from tab2 where c=0N

/Q4.4
tab2:update d:`same from tab2 where a=b
tab2:update d:`different from tab2 where a<>b

/solution 2
tab:([]a:til 15;b:15#(til 5),0N)
update b:10^b,c:100^next a from `tab
update d:?[a<>b;`different;`same] from tab

/Q5
/Come up with three separate functions that will find the factorial of a number. Each function should use a different method i.e adverbs, keywords etc.
/Also, have one of your functions display every factorial up to the input, for example:


/solution 1
f:{each[g:{$[x<0;0;prd 1.+til x]}]1+til x}
f:{$[x<2;1;x*.z.s x-1]}
f:{n:x;do[-1+f:r:n;r*:f-:1];r}

/solution 2
f: {1 *\ 1+til x}10
f: {$[x<=0;1;x*.z.s x-1]
f: {prd 1 + til x}






