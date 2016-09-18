class CreateInformatics < ActiveRecord::Migration
  def change
    create_table :informatics do |t|
      t.string :section
      t.string :topic
      t.string :acronym
      t.text :information
    end
  end
end