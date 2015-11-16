class AddProviderDb < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :npi
      t.string :last
      t.string :first
      t.string :middle
      t.string :ms
      t.string :grad
      t.string :primary
      t.string :secondary
      t.string :name_lgl
      t.string :name_common
      t.string :size
      t.string :city
      t.string :state
      t.string :aff1
      t.string :aff2
      t.string :aff3
      t.string :aff4
      t.string :aff5
      t.string :aba
      t.timestamps
    end
  end
end
  