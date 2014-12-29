class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :speaker
      t.string :title
      t.string :institution
      t.string :date
      t.string :link
      t.string :topic

      t.timestamps
    end
  end
end
