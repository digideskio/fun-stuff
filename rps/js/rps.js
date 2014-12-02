$(document).ready(function(){
  var playerChoice, computerChoice, playerWinTally = 0, computerWinTally = 0;

  //This takes care of the player selection
  $("button").click(function(e){
    playerChoice = e.target.id;

    //this takes care of computer selection
    computerChoice = random(1,3);
    if (computerChoice === 1){
      computerChoice = "rock"
    }
    else if(computerChoice === 2){
      computerChoice = "paper"
    }else if (computerChoice === 3){
      computerChoice = "scissors"
    }

    //win conditions
    if (playerChoice === "rock"){
      if (computerChoice === "rock"){
        swal("Computer chose rock...TIE!");
      }else if (computerChoice === "paper"){
        swal("Computer chose paper...YOU LOSE!");
        computerWinTally += 1;
        updateScores(playerWinTally,computerWinTally);
      }else if(computerChoice === "scissors"){
        swal("Computer chose scissors...YOU WIN!");
        playerWinTally +=1;
        updateScores(playerWinTally,computerWinTally);
      }

    }else if (playerChoice === "paper"){
      if (computerChoice === "rock"){
        swal("Computer chose rock...YOU WIN!");
        playerWinTally +=1;
        updateScores(playerWinTally,computerWinTally);
      }else if (computerChoice === "paper"){
        swal("Computer chose paper...TIE!");
      }else if(computerChoice === "scissors"){
        swal("Computer chose scissors...YOU LOSE!");
        computerWinTally += 1;
        updateScores(playerWinTally,computerWinTally);
      }

    }else if (playerChoice === "scissors"){
      if (computerChoice === "rock"){
        swal("Computer chose rock...YOU LOSE!")
        computerWinTally += 1;
        updateScores(playerWinTally,computerWinTally);
      }else if (computerChoice === "paper"){
        swal("Computer chose paper...YOU WIN!")
        playerWinTally +=1
        updateScores(playerWinTally,computerWinTally);
      }else if(computerChoice === "scissors"){
        swal("Computer chose scissors...TIE!")
      }
    }
  })

  //Next we must take care of the computer selection
  function random(minimum,maximum){
    return Math.floor(Math.random() * (maximum - minimum + 1)) + minimum;
  }

  function updateScores(playerScore,computerScore){
    $("#player-score").html(playerScore);
    $("#computer-score").html(computerScore);
  }

})

