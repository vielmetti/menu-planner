function ings(ingone, ingtwo) {
	if (ing[ingone] && ing[ingtwo])
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

	# single ingredients that make a meal

	if (ing["gochujang"]) { print "bi bim bap" }
	if (ing["napa cabbage"]) { print "ginger cabbage" }
	if (ing["pizza"]) { print "pizza night" }
	if (ing["polenta"]) { print "polenta with red sauce" }
	if (ing["tarragon"]) { print "carrot salad" }
	if (ing["winter squash"]) { print "roasted squash" }

	# ingredient pairs that make a meal

	while (getline < "menu-suggest.csv") {
		if (ings($1,$2)) { print $3 }
	}
}
