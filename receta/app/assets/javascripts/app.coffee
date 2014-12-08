receta = angular.module('receta',[
  "templates",
  "ng-Route",
  "controllers"
  ])

receta.config(['$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: "RecipesController")
  ])

controllers = angular.module("controllers",[])
controllers.controller("ReceipesController",["$scope",
  ($scope)->
  ])