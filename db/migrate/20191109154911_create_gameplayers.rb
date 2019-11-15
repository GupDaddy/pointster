class CreateGameplayers < ActiveRecord::Migration[5.2]
  def change
    create_table :gameplayers do |t|
    	t.string :player
    	t.integer :game_id
      	t.timestamps
    end
    add_index :gameplayers, :game_id
  end
end
