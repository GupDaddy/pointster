class Director::ToursController < ApplicationController
	before_action :authenticate_user!

	def new
		@tour = Tour.new
	end

	def create
		@tour = current_user.tours.create(tour_params)
		redirect_to director_tour_path(@tour)
	end

	def show
		@tour = Tour.find(params[:id])		
	end

	def index
		@tours = Tour.all
	end
end

private

def tour_params
	params.require(:tour).permit(:name)
end

