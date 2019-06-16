/**
 * @file app/assets/javascripts/skill_apps/BackBtnApp.js
 */

class BackBtnApp {
  constructor() {
    this.button = $('.skills-back');

    this.handleBackBtnClick();
  }

  handleBackBtnClick() {
    var self = this;

    this.button.click(function() {
      $(this).fadeOut('slow');

      self.resetActiveSkill();

      self.hideExhibit();
    });
  }

  resetActiveSkill() {
    var $active = $('.active-skill');

    if ($active.hasClass('bootstrap')) {
      $('.container-span, .row-span, .col-span').remove();
      $('.skillset').removeClass('bootstrap');
    }

    $active.removeClass().addClass('active-skill').text('Skills');
  }

  hideExhibit() {
    var $exhibit = $('#exhibit');

    $exhibit.animate({
      left: '100%'
    }, {
      duration: 100,
      complete: function() {
        $exhibit.html('');
      }
    });

    $('.skillset').animate({
      width: '100%'
    }, {
      duration: 300,
      complete: function() {
        return $('.skill-btn').delay(500).fadeIn('slow');
      }
    });
  }
}
