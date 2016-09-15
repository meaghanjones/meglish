class AddColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :picture, :string
    add_column :courses, :level, :string
    add_column :courses, :age, :string
    add_column :courses, :skill, :string
  end
end
