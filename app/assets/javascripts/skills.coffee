
# HOME PAGE SKILLS ANIMATIONS
#========================================

skills_main = ->

  $('.ruby-link').hover (->
    unless $(this).hasClass 'ruby-title' 
      $('.ruby-gif').fadeIn 'fast'
    return 
  ), ->
    $('.ruby-gif').fadeOut 'fast'
    return

  $('.ruby-link').click ->
    $(this).removeClass('ruby-link').addClass 'ruby-title'
    $('.ruby-gif').fadeOut 'fast'
    $("[class$=-link]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.ruby-exhibit').animate left: '70%'
    return

  $('.javascript-link').click ->
    $(this).removeClass('javascript-link').addClass 'javascript-title'
    $("[class$=-link]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.ruby-exhibit').animate left: '70%'
    return

  $('.ror-link').hover (->
    $('.skillset').removeClass('skillset-default').addClass 'skillset-ror'
    return
  ), ->
  	unless $(this).hasClass 'ror-title'
      $('.skillset').removeClass('skillset-ror').addClass 'skillset-default'
    return

  $('.ror-link').click ->
    $(this).removeClass('ror-link').addClass 'ror-title'
    $("[class$=-link]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.ruby-exhibit').animate left: '70%'
    return

  $('.bootstrap-link').click ->
    $(this).removeClass('bootstrap-link').addClass 'bootstrap-title'
    $("[class$=-link]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.ruby-exhibit').animate left: '70%'
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
    $('[class$=-title]').fadeOut 'slow'
    $('.ruby-title').removeClass('ruby-title').addClass 'ruby-link'
    $('.javascript-title').removeClass('javascript-title').addClass 'javascript-link'
    $('.ror-title').removeClass('ror-title').addClass 'ror-link'
    $('.jquery-title').removeClass('jquery-title').addClass('jquery-link').addClass('jquery-1').css 'display', 'none'
    $('.jquery-link').css 'top', '11em'
    $('.jquery-link').css 'left', '24.3em'
    $('.bootstrap-title').removeClass('bootstrap-title').addClass 'bootstrap-link'
    $('.css-title').removeClass('css-title').addClass('css3-link').css 'display', 'none'
    $('.skillset').removeClass('skillset-ror').addClass 'skillset-default'
    $('.skillset').animate width: '100%'
    $('[class$=-exhibit]').animate left: '100%'
    $("[class$=-link]").delay(500).fadeIn 'slow'
    $("p:regex(class,[1-5])").delay(500).fadeIn 'slow'
    return
  return

$(document).ready skills_main
