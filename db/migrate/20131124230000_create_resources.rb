class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :authors
      t.text :description
      t.string :image_url
      t.string :link

      t.timestamps
    end
  end
end
