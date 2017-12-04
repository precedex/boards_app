class RemoveRssFromSites < ActiveRecord::Migration
  def change
    remove_column :sites, :rss
  end
end
