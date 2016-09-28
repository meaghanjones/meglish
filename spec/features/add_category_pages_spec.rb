require 'rails_helper'

describe "the add a category process", js: true do
  it "adds a new category" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit root_path
    click_on "New Course"
    click_on 'add category'
    fill_in 'category_name', :with => 'Business English'
    click_on 'Create Category'
    expect(page).to have_content 'Business English'
  end
end
