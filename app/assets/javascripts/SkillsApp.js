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
  var $ctlr = $('body').data('controller');

  if ($ctlr !== 'home-index') return;

  var skillsApp = new SkillsApp();
});
