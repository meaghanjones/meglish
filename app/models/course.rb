class Course < ActiveRecord::Base
  has_many :lessons
  has_and_belongs_to_many :categories
  belongs_to :level
  belongs_to :age
  validates :name, :presence => true
  validates :description, :presence => true
  validates :age, :presence => true


  has_attached_file :photo, :styles => {:medium => "300x300"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
