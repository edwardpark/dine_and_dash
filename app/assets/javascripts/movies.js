angular.module("dinedash").controller("MovieIndex",function($scope){
  $scope.someValue="Hello";
  $scope.listIsVisible =false;
  $scope.showList=function(){
    console.log("fired");
    $scope.listIsVisible = true;
  }
  $scope.movies =[
      {
      title:"Movie1",
      description:"This is Movie1"
    },{
      title:"Movie2",
      description:"This is Movie2"
    },{
      title:"Movie3",
      description:"This is Movie3"
    },{
      title:"Movie4",
      description:"This is Movie4"
    }
  ]
})
