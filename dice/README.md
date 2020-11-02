# menu planning by rolling the dice

see the file "menu" in this directory, which makes
menu suggestions based on random picks of ingredients
from a few categories, and then looks for inspiration
from ingredient combinations.

requires "awk"; not exhaustively tested yet with every
awk out there, but known to work with the following

* awk version 20070501 (MacOS Darwin)
* mawk (Ubuntu 18.04)
* the awk that comes with termux (Android)

As much as possible any external dependencies
have been eliminated.

two programs here:

* ingredients.awk - from a csv of ingredients, pick a random list
* menu-suggest.awk - from a list of ingredients, suggest dishes

there are corresponding files {menu-suggest,ingredients}.csv
with data that are used as input for each, so that you can customize
the recommendations or the pantry to your tastes. These are customarily
invoked with a "menu" command which does the right thing.

If you have your own list of ingredients, feed a newline
separated list into menu-suggest.awk for best results. A
command line might look like

```sh
% printf "tofu\nbroccoli\n" | awk -f menu-suggest.awk
```

"dice" is based on some ideas I wrote down a dozen years ago.
