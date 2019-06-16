/**
 * @file app/assets/javascripts/button_apps/ReactApp.js
 */

class ReactApp extends ButtonApp {
  constructor() {
    super('.react-btn');
    this.setEvents();
  }

  setEvents() {
    this.handleMouseOver();
    this.handleClick();
  }

  handleMouseOver() {
    this.button.hover(
      function() {
        if ($(this).hasClass('react-title')) return;

        $('.ruby-gif').fadeIn('fast');

      }, function() {
        if ($(this).hasClass('react-title')) return;

        $('.ruby-gif').fadeOut('fast');
      }
    );
  }

  handleClick() {
    var self = this;

    this.button.click(function() {
      $(this).removeClass('skill-btn').addClass('react-title');

      $('.ruby-gif').fadeOut('fast');

      return self.showExhibit();
    });
  }

  showExhibit() {
    super.showExhibit('.react-exhibit');
  }
}
