
$(document).ready(function() {
  var cc = new CoffeeCollider();
  var code = "(-> SinOsc.ar(SinOsc.ar(8, 0, 10, MouseX.kr(400, 1000, 1)))).play()";
  var btn = $("#audioBtn");
  var PLAY_ICON_CLASS = "fa-play";
  var PAUSE_ICON_CLASS= "fa-pause";

  btn.on("click", function(){
    // cache object
    var $this = $(this);
    if($this.hasClass(PLAY_ICON_CLASS)) {
      cc.run(code);
      $this.removeClass(PLAY_ICON_CLASS);
      $this.addClass(PAUSE_ICON_CLASS);
    } else {
      cc.pause();
      $this.removeClass(PAUSE_ICON_CLASS);
      $this.addClass(PLAY_ICON_CLASS);
    }
  });
});




