angular
  .module('TTT')
  .controller('tttController',['$scope', function($scope){


    $scope.fillBox = function(){
      this.myStyle="blue";
      currentPlayer = new Player();
      console.log(currentPlayer)
      return "X";
    }

    
  }])


function Player(){
  this.name="Glenn";
  this.color="blue"
}

function Computer(){
  this.name="Computer"
  this.color="red"
}