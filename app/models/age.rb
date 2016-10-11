class Age < ApplicationRecord
  has_many :courses

  validates :age_name, :presence => true
end
