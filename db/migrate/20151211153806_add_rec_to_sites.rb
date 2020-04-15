class AddRecToSites < ActiveRecord::Migration
  def change
    add_column :sites, :rec, :string
  end
end