class BookCategories < ActiveRecord::Migration
  def change
    
    Category.create!(name: "Reference")
    Category.create!(name: "Concise")
    Category.create!(name: "Case-based")
    Category.create!(name: "Pediatric")
    Category.create!(name: "Cardiac")
    Category.create!(name: "OB")
    Category.create!(name: "Handbook")
    Category.create!(name: "Written Board")
    Category.create!(name: "Oral Board")
     
  end
end
