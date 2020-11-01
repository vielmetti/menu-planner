function ings(ingone, ingtwo, ingthree) {
	if (ing[ingone] && ing[ingtwo])
		return 1
	else if (ing[ingone] && ingtwo == "*")
		return 1
	else if (ing[ingone] && ing[ingthree])
		return 1
	else if (ing[ingtwo] && ing[ingthree])
		return 1
	else
		return 0
}

BEGIN {
	FS = ","
	print "== ingredients"
}

{
	ing[$0]++
	print $0
}

END {
	print "== suggestions"

	# ingredient combos that make a meal

	while (getline < "menu-suggest.csv") {
		if (ings($2,$3,$4)) { print $2, $3, $4, ":", $1 }
	}
}
