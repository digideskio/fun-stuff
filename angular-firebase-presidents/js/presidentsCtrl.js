angular
  .module("presidentsApp")
  .controller("presidentsController", ['$scope', '$firebase', presidentsController]);

function presidentsController($scope, $firebase){
  // $scope.presidents = getPresidentsList();
  var ref = new Firebase("https://sweltering-torch-7013.firebaseio.com/");
  var sync = $firebase(ref);

  // $scope.presidents = getPresidentsList();
  $scope.presidents = sync.$asArray();

  $scope.submit = function(){
    $scope.list.push(this.text);
  }

  $scope.addPresident = function(newPresidentObject){
    // $scope.presidents.push({"name":newPresidentObject});
    $scope.presidents.$add({"name":newPresidentObject});
    $scope.newPresident.name = null;
  }
  // this.addPresident = addPresident();

  function getPresidentsList(){
    return [
      {name:"George Washington"},
      {name:"Thomas Jefferson"},
      {name:"Woodrow Wilson"}
    ];
    // var ref = new Firebase("https://gov.firebaseio.com/presidents");
    // var presidents = $firebase(ref).$asArray();
    // return presidents;
  }//end getPresidentsList()

  // function addPresident(newPresidentObject){
  //   // this.getPresidentsList().$add(newPresidentObject);
  //   // this.newPresident = null
  //   $scope.getPresidentsList.push(newPresidentObject);
  //   $scope.newPresident.name = null;
  // }//end addPresident()

}