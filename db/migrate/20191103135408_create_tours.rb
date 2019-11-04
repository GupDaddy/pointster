class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
    	t.string :name
    	t.integer :user_id
      	t.timestamps
    end
    add_index :tours, :user_id
  end
end
