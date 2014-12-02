$(document).ready(function(){

  //expression is going to hold the string to evaluate
  //finalAnswer is what displays to the screen
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

  ///row2
  $("#button_4").click(function(){
    $("#readout").append("4");
    expression +=4;
  });
  $("#button_5").click(function(){
    $("#readout").append("5");
    expression +=5;
  });
  $("#button_6").click(function(){
    $("#readout").append("6");
    expression +=6;
  });

  ///row3
  $("#button_7").click(function(){
    $("#readout").append("7");
    expression +=7;
  });
  $("#button_8").click(function(){
    $("#readout").append("8");
    expression +=8;
  });
  $("#button_9").click(function(){
    $("#readout").append("9");
    expression +=9;
  });
  $("#button_0").click(function(){
    $("#readout").append("0");
    expression +=0;
  });


  $("#plus_button").click(function(){
    $("#readout").append("+");
    expression += "+";
  });

  ////try catch block
  $("#equal_button").click(function(){
    try{  
      finalAnswer = eval(expression);
      $("#readout").html("").append(finalAnswer);
      expression = finalAnswer;
    }catch(err){
      alert("Something went wrong! Check your equation!");
    }
  });
  $("#clear_button").click(function(){
    $("#readout").html("");
    expression = "";
  });

  //
  $("#back_button").click(function(){
    if (typeof(expression) === "string"){
      expression = expression.slice(0,-1);
    }else{
      expression = "" + expression;
      expression = expression.slice(0,-1);
    }

    $("#readout").html("").append(expression);
  })

})