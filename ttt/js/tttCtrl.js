angular
  .module('TTT')
  .controller('tttController',['$scope', function($scope){

    var player1  = new Player();
    var computer = new Computer();
    var currentPlayer = player1;
    var boxes = document.getElementsByClassName("box");
    var winner = false;

    var keepTrack = [];
    
    console.log(boxes);

    $scope.startGame = function(){
      player1.name = prompt("Enter your name foo!");
      document.getElementById("player-name").innerHTML = player1.name;
      console.log(player1.name);
      

    }

    $scope.fillBox = function(obj){
      console.log(obj);
      var dataValue = obj.srcElement.attributes.data.value;
      var boxToChange = document.getElementById(dataValue);
      boxToChange.style.backgroundColor = currentPlayer.color
      // boxToChange.style.backgroundImage = "url(" + currentPlayer.img + ")";
      // boxToChange.innerHTML = currentPlayer.gamePiece
      console.log(currentPlayer.img)
      // this.myStyle=currentPlayer.color;

      // currentPlayer = new Player();
      // console.log(currentPlayer)
      switchPlayer();

    }

    function switchPlayer(){
      if (currentPlayer == player1){
        currentPlayer = computer;
      }else{
        currentPlayer = player1;
      }

    }

    
  }])




// function Player(){
//   this.name="Glenn";
//   this.color="blue"
// }

// function Computer(){
//   this.name="Computer"
//   this.color="red"
// }