class Director::GameplayersController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

	def new
		@game = Game.find(params[:game_id])
		@gameplayer = Gameplayer.new
		@players = Player.all
	end

	def create
		@game = Game.find(params[:game_id])
		@gameplayer = @game.gameplayers.create(gameplayer_params)
		redirect_to director_game_path(@game)	
	end

	def show
		@game = Game.find(params[:game_id])
		@gameplayer = Gameplayer.find(params[:id])
	end

	def edit
		@game = Game.find(params[:game_id])
		@gameplayer = Gameplayer.find(params[:id])

	end

	def update
		@game = Game.find(params[:game_id])
		@gameplayer = Gameplayer.find(params[:id])
		
		@gameplayer.update_attributes(gameplayer_params)
		if @gameplayer.valid?
			redirect_to director_game_path(@game)
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@gameplayer = Gameplayer.find(params[:id])
		
		@gameplayer.destroy
		redirect_to director_game_path
	end

	def index
		@games = Game.all	
	end

	private

	def gameplayer_params
		params.require(:gameplayer).permit(:player, :hole_1_score, :hole_2_score, :hole_3_score, :hole_4_score, :hole_5_score, :hole_6_score, :hole_7_score, :hole_8_score, :hole_9_score, :hole_10_score, :hole_11_score, :hole_12_score, :hole_13_score, :hole_14_score, :hole_15_score, :hole_16_score, :hole_17_score, :hole_18_score)
	end
end
