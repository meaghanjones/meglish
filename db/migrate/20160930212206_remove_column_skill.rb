class RemoveColumnSkill < ActiveRecord::Migration[5.0]
  def change
    remove_column(:lessons, :skills, :string)
  end
end
