require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit root_path
    click_on 'New Course'
    fill_in 'Name', :with => 'English for Hiking'
    fill_in 'Description', :with => 'Next time you need to hike youll know all the words'
    fill_in 'Level', :with => 'Intermediate'
    fill_in 'Age', :with => 'All Ages'
    fill_in 'Skill', :with => 'Speaking'
    click_on "Create Course"
    click_button 'Start Learning!'
    click_on 'New Lesson'
    fill_in 'Name', :with => 'Packing list for hiking'
    fill_in 'Description', :with => 'This lesson gives you a video to watch and homework to complete.'
    fill_in 'Video', :with => 'www.youtube.com'
    fill_in 'Skills', :with => 'speaking'
    fill_in 'Time', :with => '1'
    fill_in 'Content', :with => '#Hi!'
    expect(page).to have_content 'English for Hiking'
  end

  it "gives error when no name is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    course = FactoryGirl.create(:course)
    visit courses_path
    click_on 'New Lesson'
    fill_in 'description', :with => 'This lesson gives you a video to watch and homework to complete.'
    fill_in 'video', :with => 'www.youtube.com'
    fill_in 'skills', :with => 'speaking'
    fill_in 'time', :with => '1'
    expect(page).to have_content 'errors'
  end
end
