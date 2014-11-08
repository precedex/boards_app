class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :stem
      t.string :options
      t.string :answer
      t.string :topic

      t.timestamps
    end
  end
end
