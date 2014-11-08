class AddAuthorsToTable < ActiveRecord::Migration
  def change
       add_column :sites, :authors, :string
  end
end
