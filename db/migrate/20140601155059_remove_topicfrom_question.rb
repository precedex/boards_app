class RemoveTopicfromQuestion < ActiveRecord::Migration
  def change
    remove_column :questions, :topic, :string
  end
end
