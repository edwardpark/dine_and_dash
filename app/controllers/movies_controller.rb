class MoviesController < ApplicationController
  def index
    response = HTTParty.get("http://data.tmsapi.com/v1.1/movies/showings?startDate=2015-09-14&zip=22066&imageSize=Sm&api_key="+ENV["gracenote_api_key"])
    binding.pry
    movies_all = JSON.parse(response.body)
    @current_playing_movies = []

    movies_all.each do |movie|
      this_movie = Movie.new
      this_movie.rootid = movie["rootId"]
      this_movie.title = movie["title"]
      this_movie.releasedate = movie["releaseDate"]
      this_movie.shortdescription = movie["shortDescription"]
      this_movie.genres = movie["genres"]

      current_playing_movies.push(this_movie)

    end

      render json: @current_playing_movies, status: 200
  end
  #might want to checkout activemodel serielizers for more scalable solution

end
