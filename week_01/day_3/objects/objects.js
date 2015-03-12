var artist = {};

artist.name = "katy perry";

artist.hitSong = "this is how we do";

var artistSongs = { katy: "this is how we do", taylor: "shake it off",
 spiceGirls: "wannabe" 
}


/*
artistSongs.taylor

artistSongs.spiceGirls
*/

var car = {
	colour: "black",
	make: "ford",
	speed: 0,
	accelerate: function() {car.speed += 1} 		//the function takes the name of the property
}

//car.colour = "red";	will change colour from black to red
//car.speed 			should return 0
//car.accelerate 		will return the function but not call it. It can be passed around.
//car.accelerate(); 	will call the function and change speed to 1
//car.doors = 2 		will add a new property with the designated value
//car["make"]			will return the value in "make"

//var someVar = "make";

//car.[someVar] will return ford






