class AddImageToCourses < ActiveRecord::Migration[5.0]
  def change
    change_table :courses do |t|
      t.attachment :photo
    end
  end
end
