class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user,     except: [:index, :show]
  # load_and_authorize_resource :through => :current_user

  def index
    if params[:category_ids]
      @courses = Course.where(params[:category_ids])
    else
      @courses = Course.all
    end
    @categories = Category.all
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
      redirect_to course_path(@course)
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
    params.require(:course).permit(:name, :description, :level_id, :age_id, :photo, category_ids:[])
  end

end
