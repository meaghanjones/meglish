require 'rails_helper'

describe "the add a course process" do
  it "adds a new course" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit courses_path
    click_on 'New Course'
    fill_in 'Name', :with => 'English Slang'
    fill_in 'Description', :with => 'The best class on slang to ever exist'
    attach_file 'Photo','spec/asset_specs/images/english.png'
    fill_in 'Level', :with => 'advanced'
    fill_in 'Skill', :with => 'speaking'
    fill_in 'Age', :with => 'adults'
    click_on 'Create Course'
    expect(page).to have_content 'Courses'
  end

  it "gives error when no name is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit new_course_path
    click_on 'Create Course'
    expect(page).to have_content 'Please fix these errors'
  end
end
