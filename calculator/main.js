$(document).ready(function(){

  var expression="";
  var finalAnswer=null;

  $("#button_1").click(function(){
    $("#readout").append("1");
    expression +=1;
  });
  $("#button_2").click(function(){
    $("#readout").append("2");
    expression +=2;
  });
  $("#button_3").click(function(){
    $("#readout").append("3");
    expression +=3;
  });
  $("#plus_button").click(function(){
    $("#readout").append("+");
    expression += "+";
  });
  $("#equal_button").click(function(){
    finalAnswer = eval(expression);
    $("#readout").html("").append(finalAnswer);
    expression = finalAnswer;
  });
  $("#clear_button").click(function(){
    $("#readout").html("");
    expression = "";
    console.log(expression);
  });
  $("#back_button").click(function(){
    expression = expression.slice(0,-1)
    $("#readout").html("").append(expression);
  })

})