class Director::CoursesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

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

	def edit
		@course = Course.find(params[:id])

		if @course.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end
	end

	def update
		@course = Course.find(params[:id])
		if @course.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end

		@course.update_attributes(course_params)
		if @course.valid?
			redirect_to director_course_path
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@course = Course.find(params[:id])
		if @course.user != current_user
			return render plain: 'Not Allowed', status: :forbidden
		end

		@course.destroy
		redirect_to root_path
	end

	private

	def course_params
		params.require(:course).permit(:name, :par_hole_1, :par_hole_2, :par_hole_3, :par_hole_4, :par_hole_5, :par_hole_6, :par_hole_7, :par_hole_8, :par_hole_9, :par_hole_10, :par_hole_11, :par_hole_12, :par_hole_13, :par_hole_14, :par_hole_15, :par_hole_16, :par_hole_17, :par_hole_18)
	end
end
