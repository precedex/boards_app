class AddEditionYearToResources < ActiveRecord::Migration
  def change
    add_column :resources, :edition, :integer
    add_column :resources, :year,    :integer
  end
end
