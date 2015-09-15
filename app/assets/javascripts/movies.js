angular.module("dinedash").controller("MovieIndex",function($scope){
  $scope.someValue="Hello";
  $scope.listIsVisible =false;
  $scope.showList=function(){
    $scope.listIsVisible = true;
    //console.log("fired")

    //$scope.movieIndex();
  }
  $scope.movieIndex = AllMovies.query();

})
