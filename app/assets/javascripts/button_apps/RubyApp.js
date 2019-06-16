/**
 * @file app/assets/javascripts/button_apps/RubyApp.js
 */

class RubyApp extends ButtonApp {
  constructor() {
    super('.ruby-btn');
    this.setEvents();
  }

  setEvents() {
    this.handleMouseOver();
    this.handleClick();
  }

  handleMouseOver() {
    this.button.hover(
      function() {
        if ($(this).hasClass('ruby-title')) return;

        $('.ruby-gif').fadeIn('fast');

      }, function() {
        if ($(this).hasClass('ruby-title')) return;

        $('.ruby-gif').fadeOut('fast');
      }
    );
  }

  handleClick() {
    var self = this;

    this.button.click(function() {
      // $(this).removeClass('skill-btn').addClass('ruby-title');

      $('.ruby-gif').fadeOut('fast');

      self.activateSkill();

      return self.showExhibit();
    });
  }

  activateSkill() {
    super.activateSkill('ruby', 'Ruby');
  }

  showExhibit() {
    super.showExhibit('.ruby-exhibit');
  }
}
