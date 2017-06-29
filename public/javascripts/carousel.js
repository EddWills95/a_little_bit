var index = 0;
var countUp = true;

var slides = document.getElementsByClassName('slide');
var bubbles = []; 

setInterval(autoChange, 2000);

window.onload = function() {
	generateBubbles();
	slides[0].style.display = "block";
	bubbles[index].classList.toggle('bubble-grow');
	resetSlides(index);
}

function resetSlides(current) {

	for(var i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	slides[current].style.display = "block";
}

function generateBubbles() {
	var quantity = slides.length;

	var bubbleContainer = document.getElementById('bubbles');

	for(var i = 0; i < quantity; i++) {
		var newBubble = document.createElement('DIV');
		newBubble.classList.add('bubble');
		bubbles.push(newBubble);
		bubbleContainer.append(newBubble);
	}
}

function autoChange() {
	console.log(index);
	var top = slides.length - 1;

	if(index < top && countUp == true) {
		index++;
		if (index == top) {
			countUp = false;
		}
	} else if (countUp == false) {
		index--;
		if (index == 0) {
			countUp = true;
		}
	}
}










