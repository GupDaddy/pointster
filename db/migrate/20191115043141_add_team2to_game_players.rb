class AddTeam2toGamePlayers < ActiveRecord::Migration[5.2]
  def change
  	add_column :gameplayers, :team2, :integer
  end
end
