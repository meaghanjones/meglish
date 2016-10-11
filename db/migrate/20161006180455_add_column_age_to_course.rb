class AddColumnAgeToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :age_id, :integer
  end
end
