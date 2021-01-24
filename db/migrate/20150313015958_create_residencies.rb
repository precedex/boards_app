class CreateResidencies < ActiveRecord::Migration[5.2]
  def change
    create_table :residencies do |t|
      t.string :state
      t.string :program
      t.string :website
      t.string :video
      t.timestamps
    end
  end
end
