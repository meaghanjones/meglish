class CreateJoinTableSkillLesson < ActiveRecord::Migration[5.0]
  def change
    create_join_table :skills, :lessons do |t|
      # t.index [:skill_id, :skill_id]
      # t.index [:lesson_id, :lesson_id]
    end
  end
end
