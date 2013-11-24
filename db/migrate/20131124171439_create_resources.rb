class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :authors
      t.string :link
      t.string :image_url

      t.timestamps
    end
  end
end
