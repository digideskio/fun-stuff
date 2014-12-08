(function(){

  var app = angular.module("myApp",['ngResource'])
  app.controller('myController', ['$scope','$resource',function($scope,$resource){
    var counterResource = $resource("api/counters/index.json");

    counterResource.query(function(response){
      response[2].id=3;
      console.log(response)
      // response[1].name="third";
      // response.$save();
      console.log(response);
    })
  }])



})();