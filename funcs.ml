val l = 1::2::3::[];

(*set*)
(*sort a list w/auzilary insertion func*)

(*factorial*)
fun fact 1 = 1 
|   fact n = n * fact (n-1);

(*fibonacci nth term*)
fun fib 0 = 1  
|   fib 1 = 1 
|   fib n = fib (n-2) + fib (n-1);

(*fibonacci nth term tail rec.*)
fun fib (0, a, b) = b 
|   fib (n, a, b) = fib(n-1, b, a+b);


(*concatenates 2 lists*);
fun concat (x::xs, l) = x::concat(xs, l2)          
|   concat ([],    l) = l; 

(*reverses a list*);
fun rev (x::xs) = concat(rev(xs), [x]) 
|   rev ([]   ) = [];

(*reverses a list w/ tail recursion*)
fun rev_tail (x::xs, wl) = rev (xs, x::wl)
|   rev_tail ([],    wl) = wl;
