// this creates private scope, mimicking classes in ruby

var tickMaker = function() {
    var count = 0;
    
    return function() {
        count++
        console.log(count);
    }
}

var tick = tickMaker();



//insecure
var game = {

version: 4,
player: {
  score: 50
},
init: function() {

  },

start: function() {

  }
}

//secure with closure
var gameMaker = function() {
  var version = 4;
  var publicAPI = {
    start: function() {
      console.log(version);
    }
    win: function() {
      score = score + 10;
      console.log(score);
    }
  }
  return publicAPI;
}

var game = gameMaker();
game.start();