class RemoveUserFromGplayers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :gameplayers, :user_id, :integer
  end
end
