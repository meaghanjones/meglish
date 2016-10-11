class RemoveSkillFromCourses < ActiveRecord::Migration[5.0]
  def change
    remove_column(:courses, :skill, :string)
  end
end
