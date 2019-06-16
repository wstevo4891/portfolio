// =========================================================
// Custom Project Slider JS
// =========================================================

$(document).ready(function() {
  if ($('body').data('controller') !== 'projects-show') return;

  var $slider = $('#projectSlider');
  var $buttons = $('.carousel-control-prev, .carousel-control-next');

  // Pause the carousel when the slide animation finishes
  $slider.on('slide.bs.carousel', function() {
    $slider.carousel('pause');
  });

  // Remove the focus state on mouse leave
  // so the opacity returns to 0.5
  $buttons.on('mouseleave', function() {
    $(this).blur();
  });
});
