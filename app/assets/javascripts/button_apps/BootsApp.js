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
      self.activateSkill();

      self.appendSpans();

      $('.skills-back').fadeIn('slow');
    });
  }

  activateSkill() {
    super.resetJSButton();
    super.activateSkill('bootstrap', 'Bootstrap');
    $('.skillset').addClass('bootstrap');
  }

  appendSpans() {
    $('.skillset .container')
      .before('<span class="container-span">Container</span>');

    $('.skillset .row').before('<span class="row-span">Row</span>');

    $('.skill-btn').each( function() {
      $(this).after('<span class="col-span">Col-6 Col-sm-4</span>');
    });
  }
}
