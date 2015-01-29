fib := method(n, 
	r := 1
	if (n == 1, r)
	a := 0
	b := 1
	i := 1
	while (i < n,
		r = a + b
		a = b
		b = r
		i = i + 1
	)
	r
)

n := System args rest first asNumber
fib(n) println
