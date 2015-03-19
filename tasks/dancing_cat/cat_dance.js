var movePixels = 10;
var delayMs = 50;
var catTimer = null;
var goRight = true;
// var screenLeft = 0;
// var screenRight = window.innerWidth;
// var screenMiddle = window.innerWidth/2;


function catWalk() {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(img.style.left);
  if (goRight) {
    img.style.left = (currentLeft + movePixels) + 'px';
  } else {
    img.style.left = (currentLeft - movePixels) + 'px';
  }

  if (goRight === true && )
    (currentLeft > (window.innerWidth-img.width)) {
    img.style.left = '0px';
  }
}

function startCatWalk() {
  if (catTimer !== null) { 
    return; 
  };
  catTimer = window.setInterval(catWalk, delayMs); //added on DT's instruction
}

function stopCatWalk() {
  movePixels = 10;
	clearInterval(catTimer);
  catTimer = null;
}
function speedCatWalk() {
	movePixels += 5;
}

// function slowCatWalk() {
// 	if (movePixels > 0) {
// 		movePixels -= 5;
// 	} else if (movePixels === 0) {
//     clearInterval(catTimer);
//   } else {
// 		movePixels = movePixels;
//     }
// 	} 
// }

var start = document.getElementById("start-button");
start.addEventListener("click", startCatWalk);

var stop = document.getElementById("stop-button");
stop.addEventListener("click", stopCatWalk);

var speed_up = document.getElementById("speed-button");
speed_up.addEventListener("click", speedCatWalk);


// var slow_down = document.getElementById("slow-button");
// slow_down.addEventListener("click", slowCatWalk);




