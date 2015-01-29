fib := method(n, a, b,
	go := method(n, a, b, if (n <= 0, a, go(n - 1, b, a + b)))
	if (n < 2, n, go(n, 0, 1))
)

n := System args rest first asNumber
fib(n) println
