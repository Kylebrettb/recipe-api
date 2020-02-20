class CoursesController < ApplicationController
  before_action :set_Course, only: [:show, :destroy, :update]

  def index
    @course = course.all
    render json: @course, status: :ok
  end

  def show
    render json: @course, status: :ok
  end

  def create
    @course = Course.new(dinner_params)

    if @course.save
      render json: @course, status: :created
    else
      render json: { errors: @course.errors.full_messages,
         message: 'Can not create Course because:' }, status: 422
    end
  end

  def update
    @course.update(course_params)
    render json: @course, status: :ok
  end

  def destroy
    @course.destroy
    head :no_content
  end

  private
  def course_params
    params.require(:course).permit(
      :favorite,
      :review,
      :genre,
      :user,
      :recipe,
    
    )
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
