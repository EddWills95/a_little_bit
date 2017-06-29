window.onload = function() {
	loadCarousel();
	slides[0].style.display = "block";

	generateBubbles();
}
var slides = document.getElementsByClassName('slide');

function loadCarousel() {
	var index = 0;

	resetSlides(index);

	// document.getElementById('nextButton').addEventListener("click", function() {
	// 	slides[index].classList.add('fadeOutRight');

		

	// 	if (index == slides.length - 1) {
	// 		index = 0;
	// 	} else {
	// 		index++;
	// 	}

	// 	slides[index].style.display = "block";
	// 	slides[index].classList.add('fadeInLeft');

	// });
}

function resetSlides(current) {
	for(var i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	slides[current].style.display = "block";
}

function generateBubbles() {
	var quantity = slides.length;

	for(var i = 0; i < quantity; i++) {
		
	}
}

