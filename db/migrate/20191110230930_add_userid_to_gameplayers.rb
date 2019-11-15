class AddUseridToGameplayers < ActiveRecord::Migration[5.2]
  def change
  	add_column :gameplayers, :user_id, :integer
  	add_index :gameplayers, :user_id
  end
end
