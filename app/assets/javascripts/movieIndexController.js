angular.module("dinedash").controller("MovieIndex",["Movie",function(Movie){
  this.movieList = Movie.query();
}]);
