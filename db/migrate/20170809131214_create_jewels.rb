class CreateJewels < ActiveRecord::Migration
  def change
    create_table :jewels do |t|
      t.string :sku
      t.text :name
      t.string :price
      t.string :collection
      t.text :image
    end
  end
end
