class Lesson < ActiveRecord::Base
  belongs_to :course
  has_and_belongs_to_many :skills
  validates :name, :presence => true
  validates :description, :presence => true
  validates :skills, :presence => true
  validates :time, :presence => true
end
