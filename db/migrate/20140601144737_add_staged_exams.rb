class AddStagedExams < ActiveRecord::Migration
  def change
        add_column :questions, :exam, :string
  end
end
