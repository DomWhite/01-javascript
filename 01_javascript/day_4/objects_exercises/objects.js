//The Recipe Card
var recipe = {};

recipe.title = "Mole";
console.log(recipe.title);

recipe.serves = 2;
console.log(recipe.serves);

recipe.ingredients = ["cinnamon","cumin","cocoa"]
for (var i = 0; i < recipe.ingredients.length; i++) {
		console.log(recipe.ingredients[i]);
}

//The Reading 				//An array of objects
var readingList = [
	{
	  title: "101 uses for a dead cat",
	  author: "Simon Bond",
	  alreadyRead: true
	},
	{
	  title: "Little Bobby's drunk again",
	  author: "Herbert Biddleman",
	  alreadyRead: false
	},
	{
	  title: "The practical pyromaniac",
	  author: "William Gustelle",
	  alreadyRead: false
	},
]

for (var i = 0; i < readingList.length; i++) {
	var book = readingList[i];							//different variable required
	console.log(book.title + " by " + book.author);
	var desc = book.title + " by " + book.author
	if (book.alreadyRead === true) {					//can be written "if (book.alreadyRead) {}" and will evaluate to true
		console.log("You HAVE read " + desc);
	} else if (book.alreadyRead === false){
		console.log("You HAVE NOT read " + desc);
	}
}


//The Movie Database
var movData = {
	Movie: "Crash",
	Duration: 92,
	Cast: ["Ben Affleck", "Sandra Bullock", "Terrence Howard"]
}


var printInfo = function(movie) {
	console.log(movData.Movie + " last for " + movData.Duration + " minutes. Stars: " + movData.Cast.join(", ") + ".")
}
/*
printInfo("Crash"); 		will execute the function in relation 
printInfo(92);				to the keys in the function
*/


