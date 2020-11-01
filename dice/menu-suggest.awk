{
	ing[$0]++
	print $0
}

END {
	if (ing["pizza"]) { print "pizza night" }
	if (ing["pasta"] && ing["spinach"]) { print "lasagna" }
	if (ing["rice"] && ing["eggs"]) { print "bi bim bap" }
	if (ing["kale"] && ing["salad"]) { print "forager salad" }
	if (ing["cauliflower"] && ing["cheese"]) { print "cauli cheese" }
	if (ing["chicken"] && ing["rice"]) { print "chicken casserole" }
	if (ing["parsley"] && ing["beans"]) { print "tabouli" }
	if (ing["parsley"] && ing["cucumbers"]) { print "tabouli" }
	if (ing["potatoes"] && ing["cheese"]) { print "au gratin" }
	if (ing["potatoes"] && ing["kale"]) { print "colcannon" }
}
