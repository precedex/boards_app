class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :group
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
