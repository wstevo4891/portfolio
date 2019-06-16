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

      $('[class$=-title]').fadeOut('slow');

      self.resetButtons();

      self.hideExhibit();
    });
  }

  resetButtons() {
    $('.ruby-title').removeClass('ruby-title').addClass('ruby-btn');

    $('.js-title').removeClass('js-title')
                  .addClass('javascript-btn jquery-1');

    $('.ror-title').removeClass('ror-title').addClass('ror-btn');

    $('.bootstrap-title').removeClass('bootstrap-title')
                         .addClass('bootstrap-btn');

    $('.css3-title').removeClass('css3-title').addClass('css3-btn');

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
        return $("[class$=-btn]").delay(500).fadeIn('slow');
      }
    });
  }
}
