require 'rails_helper'

describe Course do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should have_many :lessons }
  it { should have_and_belong_to_many :categories }
end
