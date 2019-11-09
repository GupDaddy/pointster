class Director::PlayersController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def new
		@player = Player.new
		@tours = Tour.all
	end

	def create
		@player = current_user.players.create(player_params)
		redirect_to director_player_path(@player)	
	end

	def show
		@player = Player.find(params[:id])		
	end

	def edit
		@player = Player.find(params[:id])

		if @player.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end
	end

	def update
		@player = Player.find(params[:id])
		if @player.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end

		@player.update_attributes(player_params)
		if @player.valid?
			redirect_to director_player_path
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@player = Player.find(params[:id])
		if @player.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end

		@player.destroy
		redirect_to root_path
	end

	def index
		@players = Player.all
	end
end

private

def player_params
	params.require(:player).permit(:name, :tour, :email, :start_point_quota)
end
