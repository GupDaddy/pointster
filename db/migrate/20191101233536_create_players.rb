class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
    	t.string :tour
    	t.string :name
    	t.string :email
    	t.integer :start_point_quota
    	t.integer :user_id
	    t.timestamps
    end
    add_index :players, :user_id
  end
end
