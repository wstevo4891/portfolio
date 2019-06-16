/**
 * @file app/assets/javascripts/button_apps/CSSApp.js
 */

class CSSApp extends ButtonApp {
  constructor() {
    super('.css3-btn');
    this.handleClick();
  }

  handleClick() {
    var self = this;

    this.button.click(function() {
      $(this).removeClass('skill-btn').addClass('css3-title');

      return self.showExhibit();
    });
  }

  showExhibit() {
    super.showExhibit('.css3-exhibit');
  }
}
