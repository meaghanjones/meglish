class DropType < ActiveRecord::Migration[5.0]
  def change
    remove_column(:lessons, :type, :string)
  end
end
