class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :rootid
      t.string :title
      t.string :releasedate
      t.string :rating
      t.text :shortdescription
      t.text :longdescription
      t.string :genres
      t.string :previewimage

      t.timestamps null: false
    end
  end
end
