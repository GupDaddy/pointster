class RemoveColumnsFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :email, :string
    remove_column :games, :team, :integer
    remove_column :games, :hole_1_points, :integer
    remove_column :games, :hole_2_points, :integer
    remove_column :games, :hole_3_points, :integer
    remove_column :games, :hole_4_points, :integer
    remove_column :games, :hole_5_points, :integer
    remove_column :games, :hole_6_points, :integer
    remove_column :games, :hole_7_points, :integer
    remove_column :games, :hole_8_points, :integer
    remove_column :games, :hole_9_points, :integer
    remove_column :games, :hole_10_points, :integer
    remove_column :games, :hole_11_points, :integer
    remove_column :games, :hole_12_points, :integer
    remove_column :games, :hole_13_points, :integer
    remove_column :games, :hole_14_points, :integer
    remove_column :games, :hole_15_points, :integer
    remove_column :games, :hole_16_points, :integer
    remove_column :games, :hole_17_points, :integer
    remove_column :games, :hole_18_points, :integer
  end
end