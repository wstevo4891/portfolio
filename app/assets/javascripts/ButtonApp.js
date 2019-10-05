/**
 * @file app/assets/javascripts/ButtonApp.js
 */

class ButtonApp {
  constructor(btnClass) {
    this.button = $(btnClass);
  }

  activateSkill(skill, text) {
    $('.active-skill')
      .addClass(skill)
      .text(text);
  }

  resetJSButton() {
    $('.js-btn')
      .removeClass()
      .addClass('skill-btn js-btn jquery-1')
      .css(this.jsDefault());
  }

  jsDefault() {
    return {
      top: '',
      left: '',
      color: '',
      transition: '',
      display: ''
    };
  }

  fetchExhibit(slug) {
    var self = this;

    $.ajax({
      type: 'GET',
      url: '/exhibits/' + slug,
      error: function(resp, status, err) {
        console.error(resp);
        console.error(status);
        console.error(err);
      },
      success: function(data) {
        $('#exhibit').html(data);

        self.showExhibit();
      }
    })
  }

  showExhibit() {
    $('.skill-btn').fadeOut('fast');

    $('.skills-back').fadeIn('slow');

    $('.skillset').animate({ width: '30%' });

    $('#exhibit').animate({ left: '30%' });
  }
}
