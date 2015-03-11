///////////////// THE TELL FORTUNE ////////////////// 
function tellFortune(kidCount, partner, geoLocation, jobTitle) {
    console.log("You will be a " + jobTitle + " in " + geoLocation + ", and married to " + partner + " with " + kidCount + " kids.")
}


///////////////// THE AGE CALCULATOR ////////////////// 
function calculateAge(birthYear, currentYear) {
    if (currentYear === undefined) {
        currentYear = new Date().getFullYear();
        }
        var age = currentYear - birthYear;
        console.log("Your age is either " + age + " or " + (age-1));
}

///////////////// THE LIFETIME SUPPLY CALCULATOR ////////////////// 
function calculateSupply(age, amountPerDay) {
        var maxAge = 82
        
        var amountNeeded = (maxAge - age) * (amountPerDay * 365.25);

        console.log("You will need " + Math.round(amountNeeded) + " to last you until the ripe old age of " + maxAge);

}

///////////////// THE GEOMETRIZER //////////////////
function calcCircumference(radius) {
    var circumference = (2 * Math.PI) * radius;
    console.log("The circumference is " + circumference);
}

function calcArea(radius) {
    var area = Math.PI * (radius * radius);
    console.log("The area is " + area);
}

///////////////// THE TEMPERATURE CONVERTOR //////////////////

function celsiusToFahrenheit(celsius) {
    var fahrenheit = (celsius *  (9 / 5)) + 32;
    console.log("The temperature is " + celsius + " degrees celsius and " + fahrenheit + " degrees fahrenheit");
}

function fahrenheitToCelsius(fahrenheit) {
    var celsius = (fahrenheit - 32) * (5 / 9);
    console.log("The temperature is " + fahrenheit + " degrees fahrenheit and " + celsius + " degrees celsius");
}


