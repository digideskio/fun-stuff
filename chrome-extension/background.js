//Would need to write site specific rules.

var host = window.location.host;

//hide ESPN comments

if (host === "espn.go.com"){
  hideEspnComments();
}

//highligting questions/answers on StackOverflow
if (host === "stackoverflow.com" || host === "www.stackoverflow.com"){
  stackOverflowEnhance();
}

//hide YouTube comments
if (host === "www.youtube.com" || host === "youtube.com"){
  alert("youtube true");
  hideYouTubeComments();
}

///////////////functions and whatnot///////////////

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
  });

}

function hideYouTubeComments(){
  $("body").css({"background-color":"black"});
}