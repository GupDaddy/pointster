class Director::GamesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def new
		@game = Game.new
		@courses = Course.all
		@players = Player.all
	end

	def create
		@game = current_user.games.create(game_params)
		redirect_to director_game_path(@game)	
	end

	def show
		@game = Game.find(params[:id])		
	end

	def edit
		@game = Game.find(params[:id])

		if @game.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end
	end

	def update
		@game = Game.find(params[:id])
		if @game.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end

		@game.update_attributes(game_params)
		if @game.valid?
			redirect_to director_game_path
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@game = Game.find(params[:id])
		if @game.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end

		@game.destroy
		redirect_to root_path
	end

	def index
		@games = Game.all	
	end

private

def game_params
		params.require(:game).permit(:course, :date, :player, :email)
	end

end

