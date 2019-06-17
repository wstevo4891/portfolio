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
    this.resetJSButton();
    super.activateSkill('bootstrap', 'Bootstrap');
    $('.skillset').addClass('bootstrap');
  }

  resetJSButton() {
    $('.js-btn').removeClass()
                .addClass('skill-btn js-btn jquery-1')
                .css(this.defaultStyle());
  }

  defaultStyle() {
    return {
      top: '',
      left: '',
      color: '',
      transition: '',
      display: ''
    };
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
