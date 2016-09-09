require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name}
  it { should validate_presence_of :level}
  it { should validate_presence_of :age}
  it { should validate_presence_of :description}
  it { should validate_presence_of :aim}
  it { should validate_presence_of :skills}
  it { should validate_presence_of :time}
  it { should belong_to :course}
end
