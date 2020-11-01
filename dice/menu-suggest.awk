function ings(ingone, ingtwo) {
	if (ing[ingone] && ing[ingtwo])
		return 1
	else
		return 0
}

BEGIN {
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
	if (ing["tarragon"]) { print "carrot salad" }
	if (ing["winter squash"]) { print "roasted squash" }

	# ingredient pairs that make a meal

	if (ings("beans","bread")) { print "tortillas and beans" }
	if (ings("beans","celery")) { print "black bean soup" }
	if (ings("beans","winter squash")) { print "southwestern stew" }
	if (ings("cauliflower","cheese")) { print "cauli cheese" }
	if (ings("chicken","rice")) { print "chicken casserole" }
	if (ings("chicken","salad")) { print "chicken salad" }
	if (ings("chicken","turmeric")) { print "turmeric black pepper chicken" }
	if (ings("curry","chicken")) { print "curry chicken salad" }
	if (ings("fish","rice")) { print "glazed salmon with rice" }
	if (ings("green cabbage","carrots")) { print "cole slaw" }
	if (ings("kale","salad")) { print "forager salad" }
	if (ings("parsley","beans")) { print "tabouli" }
	if (ings("parsley","cucumbers")) { print "tabouli" }
	if (ings("parsley","eggs")) { print "frittata" }
	if (ings("pasta","broccoli")) { print "calabrian style" }
	if (ings("pasta","cheese")) { print "mac and goat" }
	if (ings("pasta","nuts")) { print "peanut noodles" }
	if (ings("pasta","spinach")) { print "spinach lasagna" }
	if (ings("potatoes","cheese")) { print "au gratin" }
	if (ings("potatoes","eggs")) { print "eggs and fried potatoes"}
	if (ings("potatoes","kale")) { print "colcannon" }
	if (ings("rice","eggs")) { print "bi bim bap" }
	if (ings("spinach","eggs")) { print "frittata" }
	if (ings("spinach","gochujang")) { print "bi bim bap" }
	if (ings("thyme","bread")) { print "zaatar" }
}
