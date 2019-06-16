/**
 * @file app/assets/javascripts/button_apps/BootsApp.js
 */

class BootsApp extends ButtonApp {
  constructor() {
    super('.bootstrap-btn');
    this.handleClick();
  }

  handleClick() {
    var self = this;

    this.button.click(function() {
      // $(this).removeClass('skill-btn').addClass('bootstrap-title');
      self.activateSkill();

      self.showExhibit();
    });
  }

  activateSkill() {
    super.activateSkill('bootstrap', 'Bootstrap');
  }

  showExhibit() {
    super.showExhibit('.bootstrap-exhibit');
  }
}
