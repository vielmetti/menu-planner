# load the ingredients into an in-memory database
# read the arguments off the command line

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

# works for now, but replace it with pure awk next
function randline(string) {
#	cmd = "gshuf -n 1"
#	print string | cmd
#	close(cmd)
# way faster, but wrong, off by one somewhere
	arylen = split(string,ary,/\n/)
	x = int(rand()*arylen) + 1
	return ary[x]

}

# no patterns, so no input 
# but some awks need input anyway, so echo into the pgm to start it
# otherwise it hangs waiting for data!

# TODO: for each argument on the command line, pick a random
# ingredient from its category in the in-memory database
#
# if no command line arguments, pick one from each category

END { 
	for (i in ings) { 
		print randline(ings[i])
	}
}
