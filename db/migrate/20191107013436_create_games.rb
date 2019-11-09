class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
    	t.string :course
    	t.date :date
    	t.string :player
    	t.string :email
    	t.integer :team
    	t.integer :hole_1_points
		t.integer :hole_2_points
		t.integer :hole_3_points
		t.integer :hole_4_points
		t.integer :hole_5_points
		t.integer :hole_6_points
		t.integer :hole_7_points
		t.integer :hole_8_points
		t.integer :hole_9_points
		t.integer :hole_10_points
		t.integer :hole_11_points
		t.integer :hole_12_points
		t.integer :hole_13_points
		t.integer :hole_14_points
		t.integer :hole_15_points
		t.integer :hole_16_points
		t.integer :hole_17_points
		t.integer :hole_18_points
		t.integer :user_id
		t.timestamps
    end
    add_index :games, :user_id
  end
end
