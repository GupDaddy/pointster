class Director::CoursesController < ApplicationController
	before_action :authenticate_user!

	def new
		@course = Course.new
	end

	def create
		@course = current_user.courses.create(course_params)
		redirect_to director_course_path(@course)	
	end

	def show
		@course = Course.find(params[:id])		
	end

	def index
		@courses = Course.all
		
	end

	private

	def course_params
		params.require(:course).permit(:name, :par_hole_1, :par_hole_2, :par_hole_3, :par_hole_4, :par_hole_5, :par_hole_6, :par_hole_7, :par_hole_8, :par_hole_9, :par_hole_10, :par_hole_11, :par_hole_12, :par_hole_13, :par_hole_14, :par_hole_15, :par_hole_16, :par_hole_17, :par_hole_18)
	end
end
