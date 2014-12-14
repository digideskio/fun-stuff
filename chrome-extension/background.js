//Would need to write site specific rules.

var host = window.location.host;
// alert(host);

host === "espn.go.com" ? hideEspnComments() : null;
host === "stackoverflow.com"? stackOverflowEnhance() : null;

function hideEspnComments(){
  $("#comments").hide();
}

function stackOverflowEnhance(){
  $(".accepted-answer").css({
    "background-color":"#dedede",
    "border":"green solid"
  });
  
  $(".question").css({
    "background-color": "#e6e6e6",
    "border":"red solid"
  })
}