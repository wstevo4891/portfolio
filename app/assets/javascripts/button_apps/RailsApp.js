/**
 * @file app/assets/javascripts/button_apps/RailsApp.js
 */

class RailsApp extends ButtonApp {
  constructor() {
    super('.rails-btn');
    this.setEvents();
  }

  setEvents() {
    this.handleMouseOver();
    this.handleClick();
  }

  handleMouseOver() {
    this.button.hover(
      function() {
        if ($(this).hasClass('rails-title')) return;

        $('.skillset').removeClass('skillset-default')
                      .addClass('skillset-ror');
      }, function() {
        if ($(this).hasClass('rails-title')) return;

        $('.skillset').removeClass('skillset-ror')
                      .addClass('skillset-default');
      }
    );
  }

  handleClick() {
    var self = this;

    this.button.click(function() {
      // $(this).removeClass('skill-btn').addClass('rails-title');
      self.activateSkill();

      return self.fetchExhibit();
    });
  }

  activateSkill() {
    super.activateSkill('rails', 'Ruby on Rails');
  }

  fetchExhibit() {
    super.fetchExhibit('ruby-on-rails');
  }
}
