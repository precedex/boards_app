class AddPricing < ActiveRecord::Migration
  def change
           add_column :sites, :pricing, :string
  end
end
