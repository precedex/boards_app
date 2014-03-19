class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t| 
      t.string :primary
      t.string :secondary
      t.string :tertiary
      t.string :source
      t.string :author
      t.string :link
      t.timestamps
    end
  end
end
