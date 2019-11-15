class ChangeColumnsInGameplayers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :gameplayers, :hole_1_points, :hole_1_score
    rename_column :gameplayers, :hole_2_points, :hole_2_score
    rename_column :gameplayers, :hole_3_points, :hole_3_score
    rename_column :gameplayers, :hole_4_points, :hole_4_score
    rename_column :gameplayers, :hole_5_points, :hole_5_score
    rename_column :gameplayers, :hole_6_points, :hole_6_score
    rename_column :gameplayers, :hole_7_points, :hole_7_score
    rename_column :gameplayers, :hole_8_points, :hole_8_score
    rename_column :gameplayers, :hole_9_points, :hole_9_score
    rename_column :gameplayers, :hole_10_points, :hole_10_score
    rename_column :gameplayers, :hole_11_points, :hole_11_score
    rename_column :gameplayers, :hole_12_points, :hole_12_score
    rename_column :gameplayers, :hole_13_points, :hole_13_score
    rename_column :gameplayers, :hole_14_points, :hole_14_score
    rename_column :gameplayers, :hole_15_points, :hole_15_score
    rename_column :gameplayers, :hole_16_points, :hole_16_score
    rename_column :gameplayers, :hole_17_points, :hole_17_score
    rename_column :gameplayers, :hole_18_points, :hole_18_score
  end
end
