class AddImagesToQuestions < ActiveRecord::Migration
  def change
     add_column :questions, :image, :string
  end
end
