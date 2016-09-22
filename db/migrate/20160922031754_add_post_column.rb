class AddPostColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :body, :text
    end
  end
end
