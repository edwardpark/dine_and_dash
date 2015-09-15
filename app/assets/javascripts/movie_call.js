(function() {
  var movieServices = angular.module('movieServices', ['ngResource']);

  movieServices.factory('AllMovies', ['$resource', function($resource) {
    return $resource('http://localhost:3000/movies');
  }]);
})();
