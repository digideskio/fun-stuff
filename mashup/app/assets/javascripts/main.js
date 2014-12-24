app = angular.module('mashup',[
  "templates",
  "ngRoute"
  ])
  .config(["$routeProvider","$locationProvider", function($routeProvider,$locationProvider){
    $routeProvider
      .when('/',{
        templateUrl:"index.html",
        controller:"MashupController"
      });
  }])
  .controller("MashupController",["$scope","$http", "$routeParams","$location", 
    function($scope,$http,$routeParams,$location){
      //declare $scope.posts to be Post.all array on 200 Ok response
      $http.get('../posts')
                .success(function(response){
                  $scope.posts = response
                  console.log($scope.posts)
                })
    }])
