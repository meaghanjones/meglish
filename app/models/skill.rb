class Skill < ApplicationRecord
  has_and_belongs_to_many :lessons
  validates :name, :presence => true
end
