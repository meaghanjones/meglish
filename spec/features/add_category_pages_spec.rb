require 'rails_helper'

describe "the add a category process" do
  it "adds a new course", js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit new_courses_path
    click_on 'add category'
    fill_in 'Name', :with => 'Business English'
    click_on 'Create Category'
    expect(page).to have_content 'Business English'
  end
end
