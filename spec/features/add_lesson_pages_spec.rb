require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    user = FactoryGirl.create(:user)
    course = FactoryGirl.create(:course)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit course_path(course)
    click_on 'New Lesson'
    fill_in 'Name', :with => 'Packing list for hiking'
    fill_in 'Description', :with => 'This lesson gives you a video to watch and homework to complete.'
    fill_in 'Video', :with => 'www.youtube.com'
    fill_in 'Skills', :with => 'speaking'
    fill_in 'Time', :with => '1'
    fill_in 'Content', :with => '#Hi!'
    expect(page).to have_content course.name
  end

  it "gives error when no name is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    course = FactoryGirl.create(:course)
    visit course_path(course)
    click_on 'New Lesson'
    fill_in 'Description', :with => 'This lesson gives you a video to watch and homework to complete.'
    fill_in 'Video', :with => 'www.youtube.com'
    fill_in 'Skills', :with => 'speaking'
    fill_in 'Time', :with => '1'
    click_on 'Save'
    expect(page).to have_content 'errors'
  end
end
