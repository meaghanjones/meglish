class Add < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :level_id, :integer
  end
end
