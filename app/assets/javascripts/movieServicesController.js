(function() {
  var movieServices = angular.module('movieServices', ['ngResource']);

  movieServices.factory('Movie', ['$resource', function($resource) {
    return $resource('http://localhost:3000/movies/:id')
  }]);
})();
