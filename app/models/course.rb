class Course < ActiveRecord::Base
  has_many :lessons
  validates :name, :presence => true
  validates :description, :presence => true

  has_attached_file :photo, :styles => {:medium => "300x300"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
