function ings(ingone, ingtwo) {
	if (ing[ingone] && ing[ingtwo])
		return 1
	else if (ing[ingone] && ingtwo == "*")
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
		if (ings($1,$2)) { print $1, $2, ":", $3 }
	}
}
