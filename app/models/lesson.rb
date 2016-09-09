class Lesson < ActiveRecord::Base
  belongs_to :course
  validates :name, :presence => true
  validates :level, :presence => true
  validates :age, :presence => true
  validates :description, :presence => true
  validates :aim, :presence => true
  validates :skills, :presence => true
  validates :time, :presence => true
end
