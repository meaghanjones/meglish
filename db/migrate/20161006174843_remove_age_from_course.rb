class RemoveAgeFromCourse < ActiveRecord::Migration[5.0]
  def change
    remove_column(:courses, :age, :string)
  end
end
