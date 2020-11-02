function randline(string) {
	arylen = split(string,ary,/\n/)
	x = int(rand()*arylen) + 1
	return ary[x]
}

# load the ingredients into an in-memory database
# TODO: read the arguments off the command line

BEGIN { 
	srand();	
	FS = ","
	while (getline < "ingredients.csv") {
		if (ings[$1]) {
			ings[$1] = ings[$1] "\n" $2
		}
		else {
			ings[$1] = $2
		}
	}
}

# some awks need input so echo into the pgm to start it
# otherwise it hangs waiting for data!

# TODO: for each argument pick a random ingredient from its category 
# if no command line arguments, pick one from each category

END { 
	for (i in ings) { 
		print randline(ings[i])
	}
}
