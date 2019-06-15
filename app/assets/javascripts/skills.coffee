# =========================================================
# HOME PAGE SKILLS ANIMATIONS
# =========================================================

skills_main = ->

  $('.ruby-skill').hover (->
    unless $(this).hasClass 'ruby-title' 
      $('.ruby-gif').fadeIn 'fast'
    return 
  ), ->
    $('.ruby-gif').fadeOut 'fast'
    return

  $('.ruby-skill').click ->
    $(this).removeClass('ruby-skill').addClass 'ruby-title'
    $('.ruby-gif').fadeOut 'fast'
    $("[class$=-skill]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.ruby-exhibit').animate left: '70%'
    return

  $('.javascript-skill').click ->
    $(this).removeClass('javascript-skill').addClass 'javascript-title'
    $("[class$=-skill]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.javascript-exhibit').animate left: '70%'
    return

  $('.ror-skill').hover (->
    $('.skillset').removeClass('skillset-default').addClass 'skillset-ror'
    return
  ), ->
  	unless $(this).hasClass 'ror-title'
      $('.skillset').removeClass('skillset-ror').addClass 'skillset-default'
    return

  $('.ror-skill').click ->
    $(this).removeClass('ror-skill').addClass 'ror-title'
    $("[class$=-skill]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.ror-exhibit').animate left: '70%'
    return

  $('.bootstrap-skill').click ->
    $(this).removeClass('bootstrap-skill').addClass 'bootstrap-title'
    $("[class$=-skill]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.bootstrap-exhibit').animate left: '70%'
    return

  $(window).resize ->
    width_resize = $(window).width()
    if width_resize < 768
      $('.jquery-skill').css 'top', '16em'
    else
      $('.jquery-skill').css 'top', '12em'
    return

  $('.jquery-skill').mouseover ->
    if $(this).hasClass('jquery-1')
      $(this).css 'top', '16em'
      $(this).removeClass 'jquery-1'
      $(this).delay(300).addClass 'jquery-2'
    else if $(this).hasClass('jquery-2')
      $(this).css left: '65%'
      $(this).removeClass 'jquery-2'
      $(this).delay(300).addClass 'jquery-3'
    else if $(this).hasClass('jquery-3')
      $(this).css top: '8em'
      $(this).css left: '80%'
      $(this).removeClass 'jquery-3'
      $(this).delay(300).addClass 'jquery-4'
    else if $(this).hasClass('jquery-4')
      $(this).css left: '15%'
      $(this).removeClass 'jquery-4'
      $(this).delay(300).addClass 'jquery-5'
    else if $(this).hasClass('jquery-5')
      $('.jquery-fine').slideDown('slow').css('display', 'block')
    return

  $('.jquery-skill').click ->
    $(this).css 'top', '10px'
    $(this).css 'left', '10px'
    $(this).removeClass 'jquery-skill'
    $(this).removeClass('jquery-5').addClass 'jquery-title'
    $('.jquery-fine').slideUp 'slow'
    $("[class$=-skill]").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.jquery-exhibit').animate left: '70%'
    return
  
  $('.css3-skill').click ->
    $(this).removeClass('css3-skill').addClass 'css-title'
    $("[class$=-skill]").fadeOut 'fast'
    $("p:regex(class,[1-5])").fadeOut 'fast'
    $('.skills-back').fadeIn 'slow'
    $('.skillset').animate width: '70%'
    $('.css-exhibit').animate left: '70%'
    $('.skillset').addClass 'skillset-deep'
    return

  $('.skills-back').click ->
    $(this).fadeOut 'slow'
    $('[class$=-title]').fadeOut 'slow'
    $('.ruby-title').removeClass('ruby-title').addClass 'ruby-skill'
    $('.javascript-title').removeClass('javascript-title').addClass 'javascript-skill'
    $('.ror-title').removeClass('ror-title').addClass 'ror-skill'
    $('.jquery-title').removeClass('jquery-title').addClass('jquery-skill').addClass('jquery-1').css 'display', 'none'
    width_now = $(window).width()
    if width_now < 768  
      $('.jquery-skill').css 'top', '16em'
    else
      $('.jquery-skill').css 'top', '12em'
    $('.jquery-skill').css 'left', '50%'
    $('.bootstrap-title').removeClass('bootstrap-title').addClass 'bootstrap-skill'
    $('.css-title').removeClass('css-title').addClass('css3-skill').css 'display', 'none'
    $('.skillset').removeClass('skillset-ror').removeClass('skillset-deep').addClass 'skillset-default'
    $('[class$=-exhibit]').animate { left: '100%' }, 100
    $('.skillset').animate { width: '100%' }, 300
    $("[class$=-skill]").delay(500).fadeIn 'slow'
    $("p:regex(class,[1-5])").delay(500).fadeIn 'slow'
    return
  return

# Only call skills_main() on home page
$(document).ready ->
  if $('body').data('controller') != 'home-index'
    return
  else
    skills_main()
