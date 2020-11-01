{
	ing[$0]++
	print $0
}

END {
	if (ing["pizza"]) { print "pizza night" }
	if (ing["pasta"] && ing["spinach"]) { print "lasagna" }
	if (ing["rice"] && ing["eggs"]) { print "bi bim bap" }
	if (ing["spinach"] && ing["eggs"]) { print "frittata" }
	if (ing["kale"] && ing["salad"]) { print "forager salad" }
	if (ing["cauliflower"] && ing["cheese"]) { print "cauli cheese" }
	if (ing["chicken"] && ing["rice"]) { print "chicken casserole" }
	if (ing["chicken"] && ing["salad"]) { print "chicken salad" }
	if (ing["parsley"] && ing["beans"]) { print "tabouli" }
	if (ing["parsley"] && ing["cucumbers"]) { print "tabouli" }
	if (ing["parsley"] && ing["eggs"]) { print "frittata" }
	if (ing["potatoes"] && ing["cheese"]) { print "au gratin" }
	if (ing["potatoes"] && ing["kale"]) { print "colcannon" }
	if (ing["pasta"] && ing["cheese"]) { print "mac and goat" }
	if (ing["pasta"] && ing["broccoli"]) { print "calabrian style" }
	if (ing["beans"] && ing["bread"]) { print "tortillas and beans" }
	if (ing["beans"] && ing["celery"]) { print "black bean soup" }
	if (ing["fish"] && ing["rice"]) { print "glazed salmon with rice" }
	if (ing["pasta"] && ing["nuts"]) { print "peanut noodles" }
}
