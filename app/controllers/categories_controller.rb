class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user,     except: [:index, :show]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      respond_to do |format|
        format.html { redirect_to new_course_path }
        format.js
      end
    else
      render :new
    end
  end


  def edit
    @category = Category.find(params[:id])
  end


  def update
    @category= Category.find(params[:id])
    if @category.update(category_params)
      redirect_to courses_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to courses_path
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
  end
