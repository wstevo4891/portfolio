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
	else
		$('#nav-container').addClass 'container-fluid'
		$('#nav-container').removeClass 'container'
	return

$(window).on 'resize', $changeNavContainer

$(window).on 'load', $changeNavContainer

