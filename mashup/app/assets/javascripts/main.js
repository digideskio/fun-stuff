angular.module('mashup',[
  "templates",
  "ngRoute"
  ])
  .controller("MashupController",["$scope","$routeParams","$location", 
    function($scope,$routeParams,$location){

      $scope.glenn = "hello babay!"
    }])