/Q1
/formula of sum of first N odd numbers is square of N

/solution 1
{sum 1+2*(til x)} 6

/solution 2
f:{[N]N*N}

/Q2
/Return a list of all numbers between 0 and 10000 that are divisible by 6.
/solution
where 0=(til 10001) mod 6

/Q3
/Create a lowercase and uppercase dictionary for scorecards and add them together 
/solution 1
f:{l:.Q.a!-26#til 27; u:.Q.A!2 * -26#til 27;a:sum l[x]; b:sum u[x]; c:a+b ;c}

/solution 2
f:{dict:(.Q.a!(1+til 26)),.Q.A!(2*(1+til 26));sum dict x}

/solution3
{sum((.Q.a,.Q.A)!t,2*t:1+til 26)x}["AaB"]

/Q4
/4.1 - Return the elements common to both list1 and list2
/4.2 - Return all elements which occur in either list1 or list2

/solution 1
Q4.1
list1 inter list2
Q4.2
list1 union list2

/solution 2
distinct list1,list2
list1 where list1 in list2


/Q5
/create a list with 0s and same length with input list, do the conditions accordingly
/Write a function which takes a list of integers as an argument and applies the following 
/conditions to each element:
/· If the number is odd, add 3
/· If the number is a multiple of 4, multiply the number by 4
/· If none of the conditions are met, set the value to 0

/solution1
f:{a:(count x)#0; a[where 0= x mod 4]:x[where 0= x mod 4]*4; a[where 1= x mod 2]:x[where 1= x mod 2]+3; a}

/solution2 vector conditional
{?[1=x mod 2;x+3;?[0=x mod 4;x*4;0]]}1 2 3 4

/solution3 $-conditonal
{{$[1=x mod 2;x+3;0=x mod 4;x*4;0]} each x}1 2 3 4

/solution4 Separate nested conditionals and using each outside function
{$[(x mod 2) = 1;x+3;$[(x mod 4) = 0;x*4;0]]} each 1 2 3 4


Q6
/display how much memory a q session is using
.Q.w[]


Q7
/What is the maximum number of arguments a kdb+ function can have? What would be 
some ways you could get around this limit?

/solution
max of number of arguments a kdb+ function as of Sept 2015 can have is 8.
We will get "'params error" if we exceed this limit. 