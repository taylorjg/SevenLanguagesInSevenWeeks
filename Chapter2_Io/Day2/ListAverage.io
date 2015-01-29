List myAverage := method(
	sum := 0
	count := 0
	self foreach(i, v,
		if (v type != 0 type, Exception raise("list element \"" .. v .. "\" is not a number at index " .. i))
		sum = sum + v
		count = count + 1
	)
	sum / count
)

list(1, 2, 3, 4, 5) myAverage println

e := try(
	list(1, 2, "three") myAverage println
)
e catch(Exception,
	e error println
)
