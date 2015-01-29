2dArraySum := method(arr, rs, cs,
	sum := 0
	for (r, 0, rs - 1,
		for (c, 0, cs - 1,
			sum = sum + arr at(r * cs + c)
		)
	)
	sum
)

arr := list(1, 2, 3, 4, 5, 6)
2dArraySum(arr, 3, 2) println
