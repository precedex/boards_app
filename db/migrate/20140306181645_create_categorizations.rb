class CreateCategorizations < ActiveRecord::Migration
  def up
    create_table :categories do |t|
      t.string :name
    end
    
    create_table :categorizations do |t|
      t.belongs_to :resource
      t.belongs_to :category
    end
    
    remove_column :resources, :category
  end

  def down
    drop_table :categorizations
    drop_table :categories
    add_column :resources, :category, :string
  end
end

