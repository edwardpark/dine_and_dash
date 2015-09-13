module API
  class MoviesController < ApplicationController
    def index
      movies = HTTParty.get("http://data.tmsapi.com/v1.1/movies/showings?startDate=2015-09-13&zip=22066&imageSize=Sm&api_key="+ENV["gracenote_api_key"])
      render json: movies, status: 200
    end
    #might want to checkout activemodel serielizers for more scalable solution

  end
end
