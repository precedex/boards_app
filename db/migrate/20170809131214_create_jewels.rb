class CreateJewels < ActiveRecord::Migration
  def change
    create_table :jewels do |t|
      t.string :ID
      t.text :name
      t.string :collection
      t.text :image
      t.timestamps
    end
  end
end
