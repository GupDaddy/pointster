class AddColumsToGameplayers < ActiveRecord::Migration[5.2]
  def change
    add_column :gameplayers, :team, :integer
    add_column :gameplayers, :hole_1_points, :integer
    add_column :gameplayers, :hole_2_points, :integer
    add_column :gameplayers, :hole_3_points, :integer
    add_column :gameplayers, :hole_4_points, :integer
    add_column :gameplayers, :hole_5_points, :integer
    add_column :gameplayers, :hole_6_points, :integer
    add_column :gameplayers, :hole_7_points, :integer
    add_column :gameplayers, :hole_8_points, :integer
    add_column :gameplayers, :hole_9_points, :integer
    add_column :gameplayers, :hole_10_points, :integer
    add_column :gameplayers, :hole_11_points, :integer
    add_column :gameplayers, :hole_12_points, :integer
    add_column :gameplayers, :hole_13_points, :integer
    add_column :gameplayers, :hole_14_points, :integer
    add_column :gameplayers, :hole_15_points, :integer
    add_column :gameplayers, :hole_16_points, :integer
    add_column :gameplayers, :hole_17_points, :integer
    add_column :gameplayers, :hole_18_points, :integer
  end
end
