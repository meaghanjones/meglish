require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit courses_path
    click_link 'New Course'
    fill_in 'Name', :with => 'English Slang'
    fill_in 'Description', :with => 'The best class on slang to ever exist'
    click_on 'Create Course'
    click_on 'English Slang'
    click_on 'New Lesson'
    fill_in 'Name', :with => 'Important Cultural Aspects of Interviewing'
    fill_in 'Age', :with => 'adults'
    fill_in 'Description', :with => 'This lesson gives you a video to watch and homework to complete.'
    fill_in 'Video', :with => 'www.youtube.com'
    fill_in 'Aim', :with => 'to be good at interviewing'
    fill_in 'Skills', :with => 'speaking'
    fill_in 'Time', :with => '1'
    expect(page).to have_content 'English Slang'
  end

  it "gives error when no name is entered" do
    visit courses_path
    click_link 'New Course'
    fill_in 'Name', :with => 'English Slang'
    fill_in 'Description', :with => 'The best class on slang to ever exist'
    click_on 'Create Course'
    click_on 'English Slang'
    click_on 'New Lesson'
    fill_in 'description', :with => 'This lesson gives you a video to watch and homework to complete.'
    fill_in 'video', :with => 'www.youtube.com'
    fill_in 'aim', :with => 'to be good at interviewing'
    fill_in 'skills', :with => 'speaking'
    fill_in 'time', :with => '1'
    expect(page).to have_content 'errors'
  end
end
