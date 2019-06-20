# =========================================================
# Custom Navbar JS
# =========================================================

$ ->
	$navCont = $('#nav-container')
	$navLinks = $('.navbar-brand, .nav-item, .nav-link')

	# Switch navbar .container to .container-fluid on mobile
	swapNavContainer = ->
		$width = $(window).width()
		if $width > 991
		  $navCont.removeClass('container-fluid').addClass 'container'
		else if $width <= 990
			$navCont.removeClass('container').addClass 'container-fluid'
		return

  swapNavContainer()

  # Shrink navbar height when scrolling down
	$(window).scroll ->
		if $(document).scrollTop() > 50
			$('nav').addClass 'shrink'
		else
			$('nav').removeClass 'shrink'
		return
	
	# Call swapNavContainer() on window resize
	$(window).on 'resize', swapNavContainer()
	return
