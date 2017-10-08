class AddEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name_lgl
      t.integer :n_employees
      t.text :locations 
      t.text :hospitals
      t.timestamps
    end
  end
end
