class Director::GamesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :toggle_status]
	helper Director::GamesHelper

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
		@course = Course.find(@game.course)
		@players = Player.all
		@front9 = [
			@course.par_hole_1,
			@course.par_hole_2,
			@course.par_hole_3,
			@course.par_hole_4,
			@course.par_hole_5,
			@course.par_hole_6,
			@course.par_hole_7,
			@course.par_hole_8,
			@course.par_hole_9
		]
		@back9 = [
			@course.par_hole_10,
			@course.par_hole_11,
			@course.par_hole_12,
			@course.par_hole_13,
			@course.par_hole_14,
			@course.par_hole_15,
			@course.par_hole_16,
			@course.par_hole_17,
			@course.par_hole_18
		]
		@totalpar = [@front9.sum,@back9.sum]
	end

	def edit
		@game = Game.find(params[:id])

		if @game.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end
	end

	def update
		@game = Game.find(params[Gameplayer.game_id])
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
		@games = Game.order('date DESC')
	end

	def toggle_status
		@game = Game.find(params[:id])
		if @game.status.nil?
			@game.points!
		elsif @game.score?
			@game.points!
		else @game.points?
			@game.score!
		end

		redirect_to director_game_path(@game)
	end	

private

def game_params
		params.require(:game).permit(:course, :date, :player, :email)
	end

end

