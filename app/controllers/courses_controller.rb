class CoursesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :through => :current_user

  def index
    @courses = Course.all
    render :index
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "Course sucessfully added!"
      redirect_to courses_path
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course= Course.find(params[:id])
    if @course.update(course_params)
      redirect_to courses_path
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

private
  def course_params
    params.require(:course).permit(:name, :description)
  end

end
