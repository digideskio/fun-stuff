$(document).ready(function(){
  var megaman = $("#megaman");

  $(document).keydown(function(key){
    var keyPressed = key.which;
    var left = 37;
    var up = 38;
    var right = 39;
    var down = 40;

    if (keyPressed === up){
      console.log(megaman.offset().top);
      console.log(megaman.offset().left);
      megaman.animate({
        top:"-=75"
      }, function(){})

    }else if (keyPressed === down){
      console.log(megaman.offset());
      megaman.animate({
        top:"+=75"
      }, function(){})
    }else if (keyPressed === left){
      console.log(megaman.offset());
      megaman.animate({
        left:"-=75"
      }, function(){})
    }else if (keyPressed === right){
      console.log(megaman.offset());
      megaman.animate({
        left:"+=75"
      }, function(){})

    }//end if else
  }) //end document.keydown
})

//up 38
//down 40
//left 37
//right 39