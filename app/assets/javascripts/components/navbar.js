// =========================================================
// Custom Navbar JS
// =========================================================

$(function() {
  var $navCont = $('#nav-container'),
			$navLinks = $('.navbar-brand, .nav-item, .nav-link');

  function swapNavContainer() {
		var $width = $(window).width();

    if ($width > 991) {
      $navCont.removeClass('container-fluid').addClass('container');
    } else if ($width <= 990) {
      $navCont.removeClass('container').addClass('container-fluid');
    }
	};
	
  swapNavContainer();

  $(window).scroll(function() {
    if ($(document).scrollTop() > 50) {
      $('nav').addClass('shrink');
    } else {
      $('nav').removeClass('shrink');
    }
	});

  $(window).on('resize', swapNavContainer());
});
