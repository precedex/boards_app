class QuestionTopics < ActiveRecord::Migration
  def change
    
    Topic.create!(name: "Equipment & Physics")
    Topic.create!(name: "Respiratory & Critical Care")
    Topic.create!(name: "Pharmacology & Pharmacokinetics")
    Topic.create!(name: "Transfusions & Fluids")
    Topic.create!(name: "General")
    Topic.create!(name: "Pediatric")
    Topic.create!(name: "OB")
    Topic.create!(name: "Neuro")
    Topic.create!(name: "Cardiac")
    Topic.create!(name: "Regional & Pain")
     
  end
end
