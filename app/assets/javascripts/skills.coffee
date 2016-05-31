skills_main = ->

  $('.javascript-link').mouseover ->
    if $(this).hasClass('javascript-1')
      $(this).animate top: '10em'
      $(this).removeClass 'javascript-1'
      $(this).delay(300).addClass 'javascript-2'
    else if $(this).hasClass('javascript-2')
      $(this).css left: '25em'
      $(this).removeClass 'javascript-2'
      $(this).delay(300).addClass 'javascript-3'
    else if $(this).hasClass('javascript-3')
      $(this).css top: '2em'
      $(this).css left: '28em'
      $(this).removeClass 'javascript-3'
      $(this).delay(300).addClass 'javascript-4'
    else if $(this).hasClass('javascript-4')
      $(this).css left: '1em'
      $(this).removeClass 'javascript-4'
      $(this).delay(300).addClass 'javascript-5'
    else if $(this).hasClass('javascript-5')
      $('.javascript-fine').css display: 'block'
    return

  $('.ror-link').hover (->
    $('.skillset').removeClass 'skillset-default'
    $('.skillset').addClass 'skillset-ror'
    return
  ), ->
    $('.skillset').removeClass 'skillset-ror'
    $('.skillset').addClass 'skillset-default'
    return
  
  $('.css3-link').click ->
    $(this).removeClass('css3-link').addClass 'css3-title'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.css3-exhibit').animate left: '70%'
    return

  $('.skills-back').click ->
  	$(this).fadeOut 'slow'
  	$('.css3-title').removeClass('css3-title').addClass 'css3-link'
  	$('.css3-link').fadeOut 'slow'
  	$('.skillset').animate width: '100%'
  	$('.css3-exhibit').animate left: '100%'
  	$('.css3-link').fadeIn 'slow'
  	return
  return

$(document).ready skills_main
