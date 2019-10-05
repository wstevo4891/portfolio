/**
 * @file app/assets/javascripts/button_apps/JSApp.js
 */

class JSApp extends ButtonApp {
  constructor() {
    super('.js-btn');
    this.setEvents();
  }

  setEvents() {
    var self = this;

    this.handleMouseOver(self);
    this.handleClick(self);
  }

  handleMouseOver(self) {
    this.button.mouseover(function() {
      var $this = $(this);
      var animation;

      if ($this.hasClass('jquery-1')) {
        animation = { top: '10em' };
        return self.jsAnimate($this, animation, 1);

      } else if ($this.hasClass('jquery-2')) {
        animation = { left: '85%' };
        return self.jsAnimate($this, animation, 2);
      
      } else if ($this.hasClass('jquery-3')) {
        animation = { top: '-6em', left: '80%' };
        return self.jsAnimate($this, animation, 3);

      } else if ($this.hasClass('jquery-4')) {
        animation = { left: '-55%' };
        return self.jsAnimate($this, animation, 4);

      } else if ($this.hasClass('jquery-5')) {
        $this.css({
          color: '#f0db4f',
          transition: 'all .5s ease'
        });

        $('.jquery-fine')
          .slideDown('slow')
          .css('display', 'block');
      }
    });
  }

  jsAnimate($btn, animation, num) {
    var easing = {};
    
    $.each(animation, function(key, _value) {
      easing[key] = 'easeInOutQuart';
    });

    $btn.animate(
      animation,
      {
        duration: 500,
        specialEasing: easing,
        complete: function() {
          $btn.removeClass('jquery-' + num)
              .addClass('jquery-' + (num + 1));
        }
      }
    );
  }

  handleClick(self) {
    this.button.click(function() {
      $('.jquery-fine').slideUp('slow');

      self.resetButton();

      self.activateSkill();

      self.fetchExhibit();
    });
  }

  resetButton() {
    super.resetJSButton()
  }

  activateSkill() {
    super.activateSkill('js', 'JavaScript');
  }

  fetchExhibit() {
    super.fetchExhibit('javascript');
  }
}
