app=angular.module("morp",["ngRoute","templates"])

  .config(["$routeProvider",function($routeProvider){
    $routeProvider
      .when('/',{
        templateUrl:"index.html",
        controller:"morpheusController"
      });
  }])

  .controller("morpheusController",["$scope","$http",function($scope,$http){
    $scope.glenn="hey babay"

    //initialize quote to empty string to have empty textarea
    $scope.quote = ""
    $scope.numberOfParagraphs = 1


    //gets random quote
    $scope.getQuote = function(numParagraphs){
      //if numParagraphs comes through as blank I want it to initialize as 1
      //using + operator to convert string to num which will return NaN if not a num.
      //client-side validation???
      numParagraphs = (isNaN(+numParagraphs)) ? 1 : numParagraphs;
      
      //if numParagraphs is greater than 5 return a max of 5.
      numParagraphs = numParagraphs > 5 ? 5 : numParagraphs;
      console.log(numParagraphs);

      if (numParagraphs === 1){
        $scope.quote = selectQuoteFromModel()
      }else{
        console.log("num paragraphs is " + numParagraphs)
      }
    }

    function selectQuoteFromModel(){
      return quotes[Math.floor(Math.random()*quotes.length)]
    }
  }])

      var quotes = ["I've been watching you, Neo, and I want to meet you.  I don't know if you're ready to see what I want to show you, but unfortunately, we have run out of time.  They're coming for you, Neo.  And I'm not sure what they're going to do.",
        "We know that you have been contacted by a certain individual. A man who calls himself Morpheus. Whatever you think you know about this man is irrelevant to the fact that he is wanted for acts of terrorism in more countries than any other man in the world.  He is considered by many authorities to be the most dangerous man alive.",
        "I've watched you, Neo.  You do not use a computer like a tool.  You use it like it was part of yourself.  What you can do inside a computer is not normal.  I know. I've seen it.  What you do is magic.",
        "It's that feeling you have had all your life.  That feeling that something was wrong with the world.  You don't know what it is but it's there, like a splinter in your mind, driving you mad, driving you to me.  But what is it?",
        "The Matrix is everywhere, it's all around us, here even in this room. You can see it out your window, or on your television.  You feel it when you go to work, or go to church or pay your taxes.  It is the worldthat has been pulled over your eyes to blind you from the truth.",
        "That you are a slave, Neo.  That you, like everyone else, was born into bondage... kept inside a prison that you cannot smell, taste, or touch.  A prison for your mind.",
        "What is real?  How do you define real?  If you're talking about your senses, what you feel, taste, smell, or see, then all you're talking about are electrical signals interpreted by your brain.",
        "This is the Chicago you know. Chicago as it was at the end of the twentieth century.  This Chicago exists only as part of a neural-interactive simulation that we call the Matrix."

      ]