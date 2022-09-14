/Q1.1
/ Write a function to return all the multiples of 3 OR 5 (in ascending order) up to a certain number
/solution 1
f:{(where max 0=til[x+1]mod/:3 5)except 0}

/solution 2
f:{(1+til x) where (0=(1+til x) mod 3)|0=(1+til x) mod 5}

/solution 3
{[n] where 0=min(til n)mod/:3 5}

/Q1.2
/Write a function to return all the multiples of both 3 AND 5 (in ascending order) up to a certain number
/solution 1
f:{(where max 0=til[x+1]mod/:3 5)except 0}

/solution 2
f:{a:(1+til x);a where (0=a mod 3)&(0=a mod 5)}

/solution 3
{[n]where 0=(til n)mod(3*5)}

/solution 4
{where 0=sum(til x)mod/:3 5}31

/Q2
/ Write a function which returns a list of all numbers up to an argument, that are either divisible by 6 OR are palindromes. 
/solution 1
f:{l1:(til x) where 0 = (til x) mod 6; l2:a where a="J"$reverse each string a: distinct a:1+til x; distinct l1,l2}

/solution 2
f:{a where a="J"$reverse each string a: distinct raze a:x}

/solution 3
{g:til x+1;h:string each g;g where (0=g mod 6)|(h~'reverse each h)}100

/solution 4
(reverse 10 vs 545)~10 vs 545

/Q3
/ Write a function which creates a matrix of size [n*n], where each element of the list in the product of its coordinates:

/solution 1
f:{(1 + til x)*/:(1 + til x)}

/solution 2
f:{[n]n cut prd each (1+til [n]) cross (1+ til [n])}

/Q4
/Write a function that returns the first n numbers of the Fibonacci sequence

/solution 1
f:{{x,sum -2#x}/[x-2;0 1]}

/Q5
/Write a function which calculates the median of a list of numbers – without using the med keyword


/solution 1
f:{index:-1 + ceiling 0.5 * count (asc x); (asc x)[index]}

/solution 2 
mdn:{c:(count x)%2;a:asc x;(a[floor c]+(a[ceiling(c-1)]))%2

/solution 3
f:{x:asc x;c:count x;c2:`int$c%2;$[0=c mod 2;0.5*(x c2)+(x[c2-1]);x[c2-1]]}