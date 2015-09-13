module API
  class MoviesController < ApplicationController
    def index
      movies = Movie.all
      render json: movies, status: 200
    end
    #might want to checkout activemodel serielizers for more scalable solution

  end
end
