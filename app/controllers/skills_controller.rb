class SkillsController < ApplicationController
  # before_action :authenticate_user!
  before_action :admin_user,     except: [:index, :show]

  # GET /skills
  # GET /skills.json
  def index
    @skills = Skill.all
  end


  # GET /skills/new
  def new
    @skill = Skill.new
    @course = Course.find(params[:course_id])
  end

  # GET /skills/1/edit
  def edit
  end

  # POST /skills
  # POST /skills.json
  def create
    @skill = Skill.new(skill_params)
    @course = Course.find(params[:course_id])
    if @skill.save
      respond_to do |format|
        format.html { redirect_to new_course_lesson_path(@lesson.course) }
        format.js
      end
    else
      render :new
    end
  end

  # PATCH/PUT /skills/1
  # PATCH/PUT /skills/1.json
  def edit
    @skill = Skill.find(params[:id])
  end


  def update
    @skill= Skill.find(params[:id])
    if @skill.update(skill_params)
      redirect_to courses_path
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to courses_path
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.require(:skill).permit(:name)
    end
end
