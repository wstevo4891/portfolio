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

        $('.react-logo').fadeIn('fast');

      }, function() {
        if ($(this).hasClass('react-title')) return;

        $('.react-logo').fadeOut('fast');
      }
    );
  }

  handleClick() {
    var self = this;

    this.button.click(function() {
      // $(this).removeClass('skill-btn').addClass('react-title');

      $('.react-logo').fadeOut('fast');

      self.activateSkill();

      return self.fetchExhibit();
    });
  }

  activateSkill() {
    super.activateSkill('react', 'ReactJS');
  }

  fetchExhibit() {
    super.fetchExhibit('react-js');
  }
}
