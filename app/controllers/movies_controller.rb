class MoviesController < ApplicationController
  def index
    response = HTTParty.get("http://data.tmsapi.com/v1.1/movies/showings?startDate=2015-09-14&zip=22066&imageSize=Sm&api_key="+ENV["gracenote_api_key"])

    movies_all = JSON.parse(response.body)


    movies_all.each do |movie|
      this_movie = Movie.new
      this_movie.rootid = movie["rootId"]
      this_movie.title = movie["title"]
      this_movie.releasedate = movie["releaseDate"]
      this_movie.shortdescription = movie["shortDescription"]
      this_movie.longdescription = movie["longDescription"]
      this_movie.previewimage = movie["preferredImage"]["uri"]
      this_movie.rating = ["ratings"]
      this_movie.genres = movie["genres"]
      this_movie.currentlyPlaying = true;
      this_movie.save

    end

      @current_playing_movies = Movie.where("currentlyPlaying = true")
      binding.pry
      render json: @current_playing_movies, status: 200
  end
  #might want to checkout activemodel serielizers for more scalable solution

  def show

  end


end
