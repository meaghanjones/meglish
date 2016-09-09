class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :level, :string
      t.column :age, :string
      t.column :description, :string
      t.column :video, :string
      t.column :aim, :string
      t.column :skills, :string
      t.column :time, :integer

      t.timestamps
    end
  end
end
