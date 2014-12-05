(function(){
  var Glenn = angular.module("glennApp",[]);
  
  Glenn.controller('glennCtrl',function($scope, $http){
    $scope.foods = foods; 
    $scope.phones = [];
    $http.get('json/glossary.json').success(function(data){
      $scope.phones = data;

    })
  });

  var foods = [{meal:'eggs'}, {meal:'steak'}, {meal:'potato'}];
})();