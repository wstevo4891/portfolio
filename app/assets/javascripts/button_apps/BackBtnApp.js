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

      // $('[class$=-title]').fadeOut('slow');

      // self.resetButtons();

      self.resetActiveSkill();

      self.hideExhibit();
    });
  }

  resetActiveSkill() {
    $('.active-skill').removeClass()
                      .addClass('active-skill')
                      .fadeOut('fast');
  }

  resetButtons() {
    $('.ruby-title').removeClass('ruby-title').addClass('skill-btn ruby-btn');

    $('.js-title').removeClass('js-title')
                  .addClass('skill-btn js-btn jquery-1')
                  .css({
                    top: '',
                    left: '',
                    color: '',
                    transition: '',
                    display: ''
                  });

    $('.css3-title').removeClass('css3-title').addClass('skill-btn css3-btn');

    $('.rails-title').removeClass('rails-title').addClass('skill-btn rails-btn');

    $('.react-title').removeClass('react-title').addClass('skill-btn react-btn');

    $('.bootstrap-title').removeClass('bootstrap-title')
                         .addClass('skill-btn bootstrap-btn');

    $('.skillset').removeClass('skillset-ror skillset-deep')
                  .addClass('skillset-default');
  }

  hideExhibit() {
    $('[class$=-exhibit]').animate({
      left: '100%'
    }, 100);

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
