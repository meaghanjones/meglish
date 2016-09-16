class AddImageAttachmentsToCourses < ActiveRecord::Migration[5.0]
  def change
    remove_column :courses, :picture, :string
  end
end
