class RemoveColumnFromLessons < ActiveRecord::Migration[5.0]
  def change
      remove_column(:lessons, :time, :integer)
  end
end
