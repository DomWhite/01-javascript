var myApp = angular.module('myApp', []);

myApp.controller('mainController', ['$scope', '$filter', function($scope, $filter) {
    
    $scope.handle = "";

    $scope.lowercasehandle = function() {
      return $filter('lowercase')($scope.handle);
    }

    $scope.$watch('handle', function(newValue, oldValue){
      console.info('Changed!');
      console.log('Old: ' + oldValue);
      console.log('New: ' + newValue);
    })

    setTimeout(function(){ // angular won't apply changes due to js' async nature

      $scope.$apply(function(){ // this tells angular to watch event loop and apply changes
        $scope.handle = 'newtwitterhandle'; 
        console.log("Scope changed!");
      });

    }, 3000);
    
}]);

// $scope.$apply is used with certain JS functions and 
// often with the use of external libraries.
// Use Angular's services when possible to escape this.
