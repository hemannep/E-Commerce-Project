

var hello = document.getElementById("topbutton");

		window.onscroll = function() {scrollFunction()};

			function scrollFunction() {
	if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
		hello.style.display = "block";
	} else {
		hello.style.display = "none";
	}
}

			function gototop() {
  		document.body.scrollTop = 0; //For Safari
  		document.documentElement.scrollTop = 0; //For Chrome
  }

//   ------------search button--------------------------

// Get the input field and search button
var input = document.querySelector(".search-txt");
var btn = document.querySelector(".search-btn");

// Add an event listener to the search button
btn.addEventListener("click", function() {
  // Get the search query from the input field
  var query = input.value;
  
  // Perform the search
  // Your code here...
});

// ------------------payment---------------------

$(function () {
	$('[data-toggle="popover"]').popover();
	
	$('#cvc').on('click', function(){
	  if ( $('.cvc-preview-container').hasClass('hide') ) {
		$('.cvc-preview-container').removeClass('hide');
	  } else {
		$('.cvc-preview-container').addClass('hide');
	  }    
	});
	
  });


