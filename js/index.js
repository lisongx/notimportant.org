$(document).ready(function() {
  var cc = new CoffeeCollider();
  var code = "(-> Pan2.ar(SinOsc.ar(SinOsc.ar(MouseY.kr(5, 10, 1), 0, 10, MouseX.kr(400, 1000, 1))), SinOsc.kr(0.4), 0.05)).play()";
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




