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
      $(this).removeClass('skill-btn').addClass('bootstrap-title');

      self.showExhibit();
    });
  }

  showExhibit() {
    super.showExhibit('.bootstrap-exhibit');
  }
}
