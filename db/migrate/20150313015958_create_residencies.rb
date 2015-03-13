class CreateResidencies < ActiveRecord::Migration
  def change
    create_table :residencies do |t|
      t.string :state
      t.string :program
      t.string :website
      t.timestamps
    end
  end
end
