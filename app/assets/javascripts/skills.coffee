
# HOME PAGE SKILLS ANIMATIONS
#========================================

skills_main = ->

  $('.ruby-link').hover (->
    $('.ruby-gif').fadeIn 'fast'
    return 
  ), ->
    $('.ruby-gif').fadeOut 'fast'
    return

  $('.jquery-link').mouseover ->
    if $(this).hasClass('jquery-1')
      $(this).css 'top', '16em'
      $(this).removeClass 'jquery-1'
      $(this).delay(300).addClass 'jquery-2'
    else if $(this).hasClass('jquery-2')
      $(this).css left: '28em'
      $(this).removeClass 'jquery-2'
      $(this).delay(300).addClass 'jquery-3'
    else if $(this).hasClass('jquery-3')
      $(this).css top: '8em'
      $(this).css left: '32em'
      $(this).removeClass 'jquery-3'
      $(this).delay(300).addClass 'jquery-4'
    else if $(this).hasClass('jquery-4')
      $(this).css left: '3em'
      $(this).removeClass 'jquery-4'
      $(this).delay(300).addClass 'jquery-5'
    else if $(this).hasClass('jquery-5')
      $('.jquery-fine').slideDown('slow').css('display', 'block')
    return

  $('.jquery-link').click ->
    $(this).css 'top', '10px'
    $(this).css 'left', '10px'
    $(this).removeClass 'jquery-link'
    $(this).removeClass('jquery-5').addClass 'jquery-title'
    $('.jquery-fine').slideUp 'slow'
    $("[class$=-link]").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.jquery-exhibit').animate left: '70%'
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
    $(this).removeClass('css3-link').addClass 'css-title'
    $("[class$=-link]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.css-exhibit').animate left: '70%'
    return

  $('.skills-back').click ->
    $(this).fadeOut 'slow'
    $('.css-title').fadeOut 'slow'
    $('.jquery-title').fadeOut 'slow'
    $('.css-title').removeClass('css-title').addClass('css3-link').css 'display', 'none'
    $('.jquery-title').removeClass('jquery-title').addClass('jquery-link').addClass('jquery-1').css 'display', 'none'
    $('.jquery-link').css 'top', '11em'
    $('.jquery-link').css 'left', '24.3em'
    $('.skillset').animate width: '100%'
    $('.css-exhibit').animate left: '100%'
    $('.jquery-exhibit').animate left: '100%'
    $("[class$=-link]").delay(500).fadeIn 'slow'
    $("p:regex(class,[1-5])").delay(500).fadeIn 'slow'
    return
  return

$(document).ready skills_main
