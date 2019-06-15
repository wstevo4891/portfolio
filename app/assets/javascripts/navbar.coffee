# =========================================================
# Custom Navbar JS
# =========================================================

$(window).scroll ->
  if $(document).scrollTop() > 50
  	$('nav').addClass 'shrink'
  else
  	$('nav').removeClass 'shrink'
  return

$changeNavContainer = ->
	if $(window).width() > 991
		$('#nav-container').addClass 'container'
		$('#nav-container').removeClass 'container-fluid'
	else if $(window).width() <= 990
		$('#nav-container').addClass 'container-fluid'
		$('#nav-container').removeClass 'container'
	return

$(window).on 'resize', $changeNavContainer

$(document).ready $changeNavContainer
