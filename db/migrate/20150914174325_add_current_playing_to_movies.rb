class AddCurrentPlayingToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :currentlyPlaying, :boolean
  end
end
