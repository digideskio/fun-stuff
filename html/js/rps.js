$(document).ready(function(){
  var buttonClicked;

  //This takes care of the player selection
  $("button").click(function(e){
    buttonClicked = e.target.id;
    alert("Player chose " + buttonClicked);
  })

  //Next we must take care of the computer selection
  

})