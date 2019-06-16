/**
 * @file app/assets/javascripts/ButtonApp.js
 */

class ButtonApp {
  constructor(btnClass) {
    this.button = $(btnClass);
  }

  activateSkill(skill, text) {
    $('.active-skill').addClass(skill)
                      .text(text);
  }

  showExhibit(exhibit) {
    $('.skill-btn').fadeOut('fast');

    $('.skills-back').fadeIn('slow');

    $('.skillset').animate({ width: '70%' });

    return $(exhibit).animate({ left: '70%' });
  }
}
