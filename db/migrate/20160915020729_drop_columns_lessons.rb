class DropColumnsLessons < ActiveRecord::Migration[5.0]
  def change
    remove_column :lessons, :level, :string
    remove_column :lessons, :age, :string
    remove_column :lessons, :aim, :string
  end
end
