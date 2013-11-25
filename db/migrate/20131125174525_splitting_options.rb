class SplittingOptions < ActiveRecord::Migration
  def change
    add_column :questions, :option_a, :string
    add_column :questions, :option_b, :string
    add_column :questions, :option_c, :string
    add_column :questions, :option_d, :string
    add_column :questions, :option_e, :string
    remove_column :questions, :options
  end
end
