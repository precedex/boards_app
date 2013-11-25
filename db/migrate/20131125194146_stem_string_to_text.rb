class StemStringToText < ActiveRecord::Migration
  def change
    change_column :questions, :stem, :text
  end
end
