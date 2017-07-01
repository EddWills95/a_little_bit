var index = 0;
var countUp = true;

var slides = document.getElementsByClassName('slide');
var bubbles = []; 

var ticker = setInterval(function() {
	increment(),
	setTimeout(resetSlides, 2000);
	}, 7000);

window.onload = function() {
	generateBubbles();
	bubbles[index].classList.add('bubble-grow');
	slides[0].style.display = "block";
	resetSlides(index);
}

function resetSlides() {
	for(var i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
		slides[i].className = "slide animated";
	}
	slides[index].style.display = "block";
}

function generateBubbles() {
	var quantity = slides.length;

	var bubbleContainer = document.getElementById('bubbles');

	function findSelf(bub){
			return bub == self
		}

	for(var i = 0; i < quantity; i++) {
		var newBubble = document.createElement('DIV');
		newBubble.classList.add('bubble');
		bubbles.push(newBubble);

		bubbleContainer.append(newBubble);
	}
}


function resetBubbles() {
	for(var i = 0; i < bubbles.length; i++) {
		bubbles[i].className = "bubble";
	}
}

function slideOutLeft(index) {
	slides[index].classList.toggle('slideOutLeft');
}

function slideInRight(index) {
	slides[index].style.display = "block";
	slides[index].classList.toggle('slideInRight');
}

function slideOutRight(index) {
	slides[index].classList.toggle('slideOutRight');
}

function slideInLeft(index) {
	slides[index].style.display = "block";
	slides[index].classList.toggle('slideInLeft');
}


function increment() {

	var top = slides.length - 1;

	if(index < top && countUp == true) {
		slideOutLeft(index);
		index++;
		slideInRight(index);
		if (index == top) {
			countUp = false;
		}
	} else if (countUp == false) {
		slideOutRight(index); 
		index--;
		slideInLeft(index); 
		if (index == 0) {
			countUp = true;
		}
	}
	resetBubbles();
	bubbles[index].classList.add('bubble-grow');
}





