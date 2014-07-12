$(document).ready(function() {
  var img = new Image;
  img.crossOrigin = "Anonymous";

  $.get("/photo_list.txt", function(data){
    var site = "http://photos.notimportant.org/";
    var photoPaths = data.split("\n");
    var photo = photoPaths[Math.floor(Math.random() * photoPaths.length)];
    var photoLink = site + photo;
    img.src = photoLink;
  });
  
  img.onload = function() { 
    var canvas = document.getElementById("bg-canvas");
    var glitchedCanvas = document.getElementById("glitched-canvas");
    var ctx = canvas.getContext("2d");
    var glitchedCtx = glitchedCanvas.getContext("2d");
    
    ctx.drawImage(img, 0, 0);
    var bgImgData = ctx.getImageData(0, 0, canvas.clientWidth, canvas.clientHeight );
    var parameters = { amount: 10, seed: Math.random() * 30, iterations: 10, quality: 80 };
    var bgCtx = document.getCSSCanvasContext("2d", "mybackground", 600, 600);
    
    glitch(bgImgData, parameters, function(image_data){
      glitchedCtx.putImageData(image_data, 0, 0);

      bgCtx.globalAlpha = 0.4;
      bgCtx.drawImage(glitchedCanvas, 0, 0);
      
      $("canvas").hide();
    });
  };

});
