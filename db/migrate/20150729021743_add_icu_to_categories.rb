class AddIcuToCategories < ActiveRecord::Migration
  def change
     Category.create!(name: "ICU")
  end
end
