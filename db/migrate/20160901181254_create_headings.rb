class CreateHeadings < ActiveRecord::Migration
  def change
    create_table :headings do |t|
      t.string :code
      t.string :heading
    end
    create_table :subheadings do |t|
      t.belongs_to :heading, index: true
      t.string :code
      t.string :subheading
      t.integer :heading_id
    end
    create_table :subsubheadings do |t|
      t.belongs_to :subheading, index:true
      t.string :code
      t.string :subsubheading
      t.integer :subheading_id
    end
    create_table :subsubsubheadings do |t|
      t.belongs_to :subsubheading, index:true
      t.string :code
      t.string :subsubsubheading
      t.integer :subsubheading_id
    end
  end
end
