class RemovePricingFromSites < ActiveRecord::Migration
  def change
    remove_column :sites, :pricing
  end
end
