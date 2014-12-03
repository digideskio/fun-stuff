(function(){
  var app = angular.module('kendamaApp',[])

  app.controller("kendamaController", ['$scope','kendamaFactory', function($scope,kendamaFactory){
    this.gem = "hello there from controller"
    this.kendamas = kendamaFactory.getKendamas();
  }]);//end controller


  app.factory('kendamaFactory', [function(){
    var factory = {};

    var kendamas = [
      {"name": "KendamaUSA",
       "color": "multi",
       "price": 20.51},
       {"name": "Mugen Musou",
       "color": "pink",
       "price": 99.90
       },
       {"name": "BLK White Out",
       "color": "black/white",
       "price": 35.00}
    ];
    factory.getKendamas = function(){
      return kendamas;
    };
    return factory;
  }])//end factory

})();//end IIFE