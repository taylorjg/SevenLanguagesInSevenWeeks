List myAverage := method(
	sum := 0
	count := 0
	self foreach(v, sum = sum + v; count = count + 1)
	sum / count
)

x := list(1, 2, 3, 4, 5)
x myAverage println
