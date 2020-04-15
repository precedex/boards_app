class AddRssToSites < ActiveRecord::Migration
  def change
    add_column :sites, :rss, :string
  end
end
