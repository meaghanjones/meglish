class CoursesController < ApplicationController
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
end
