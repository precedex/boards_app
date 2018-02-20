class CreateChessfilms < ActiveRecord::Migration
  def change
    create_table :chessfilms do |t|
      t.string :title
      t.string :year
      t.string :time
      t.string :director
      t.string :image
      t.text :description
      t.string :imdb_link
      t.string :trailer_link
      t.string :full_link
    end
  end
end
