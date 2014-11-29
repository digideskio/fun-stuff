(function(){

  var app = angular.module('myApp',['ngResource']);

  // app.controller('myController', function($scope){
  //   $scope.myValue = "Hello World";
  //   var myOtherValue = "this one is not accessible in the view";
  // })

  app.controller('myController', ['$scope','$resource','myFactory', function($scope, $resource,myFactory){
    // $scope.myValue = "Hello World";
    this.gem = gem;
    this.posts = myFactory.getPosts();
    // this.posts = posts;

    var counterResource = $resource('http://www.reddit.com/r/Kendama/.json');
    counterResource.query(function(response){
      alert(response);
    })
  }]); //end myController






  app.factory('myFactory', [function(){
    var factory = {};

    var posts = [
      {name:"Post 1",
        id:1,
        content: " leilani Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi enim dui, tristique viverra ultrices accumsan, convallis dictum orci. Maecenas et facilisis libero. Nam dui turpis, eleifend in fringilla eu, auctor non odio. Vestibulum aliquet, tellus ac suscipit pharetra, ante dolor euismod dui, ac tristique ex felis non dolor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce mollis nunc quis leo feugiat hendrerit. Etiam viverra mi non massa laoreet aliquam. Phasellus imperdiet interdum odio, eget tincidunt justo tincidunt eu. Etiam pharetra leo ut cursus sollicitudin. Quisque feugiat facilisis suscipit. Integer euismod urna nunc, vel volutpat eros finibus nec.",
        publish: true},
      {name:"Post 2",
        id:2,
        content: "glenn Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi enim dui, tristique viverra ultrices accumsan, convallis dictum orci. Maecenas et facilisis libero. Nam dui turpis, eleifend in fringilla eu, auctor non odio. Vestibulum aliquet, tellus ac suscipit pharetra, ante dolor euismod dui, ac tristique ex felis non dolor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce mollis nunc quis leo feugiat hendrerit. Etiam viverra mi non massa laoreet aliquam. Phasellus imperdiet interdum odio, eget tincidunt justo tincidunt eu. Etiam pharetra leo ut cursus sollicitudin. Quisque feugiat facilisis suscipit. Integer euismod urna nunc, vel volutpat eros finibus nec.",
        publish: false},
      {name:"Post 3",
        id:3,
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi enim dui, tristique viverra ultrices accumsan, convallis dictum orci. Maecenas et facilisis libero. Nam dui turpis, eleifend in fringilla eu, auctor non odio. Vestibulum aliquet, tellus ac suscipit pharetra, ante dolor euismod dui, ac tristique ex felis non dolor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce mollis nunc quis leo feugiat hendrerit. Etiam viverra mi non massa laoreet aliquam. Phasellus imperdiet interdum odio, eget tincidunt justo tincidunt eu. Etiam pharetra leo ut cursus sollicitudin. Quisque feugiat facilisis suscipit. Integer euismod urna nunc, vel volutpat eros finibus nec.",
        publish: true}
    ];

    factory.getPosts = function(){
      return posts;
    };

    return factory;
  }]); //end myFactory

  var gem = {
    name:'rock',
    color:'green'
  };



  // app.controller('myController', ['$scope', function($scope) {
  //   $scope.myValue = 'Hello World';
  // }]);


})();