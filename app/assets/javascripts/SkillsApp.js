/**
 * @file app/assets/javascripts/skillsApp.js
 */

class SkillsApp {
  constructor() {
    this.rubyApp = new RubyApp();
    this.jsApp = new JSApp();
    this.cssApp = new CSSApp();
    this.railsApp = new RailsApp();
    this.reactApp = new ReactApp();
    this.bootsApp = new BootsApp();
    this.backBtnApp = new BackBtnApp();
  }
}

$(document).ready(function() {
  if ($('body').data('controller') !== 'home-index') return;

  var skillsApp = new SkillsApp();
});
