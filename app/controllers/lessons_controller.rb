class LessonsController < ApplicationController
before_action :authenticate_user!
before_action :admin_user,     only: :destroy

def show
  @course = Course.find(params[:course_id])
  @lesson = Lesson.find(params[:id])
end

  def new
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons.new
  end

  def create
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons.new(lesson_params)
    if @lesson.save
      flash[:notice] = "You have saved your lesson information."
      redirect_to course_path(@lesson.course)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:course_id])
    @lesson = Lesson.find(params[:id])
  end

  def update
    @course= Course.find(params[:course_id])
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to courses_path(@lesson.course)
    else
      render :edit
    end
  end

def destroy
  @lesson = Lesson.find(params[:id])
  @lesson.destroy
  redirect_to courses_lesson_path(@lesson.course)
end

private
  def lesson_params
    params.require(:lesson).permit(:name, :description, :video, :skills, :time, :body)
  end
end
