class Director::PlayersController < ApplicationController
	before_action :authenticate_user!
	def new
		@player = Player.new
	end

	def create
		@player = current_user.players.create(player_params)
		redirect_to director_player_path(@player)	
	end

	def show
		@player = Player.find(params[:id])		
	end

	def index
		@players = Player.all
	end
end

private

def player_params
	params.require(:player).permit(:name, :tour, :email, :start_point_quota)
end
