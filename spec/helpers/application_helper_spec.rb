require 'rails_helper'

describe ApplicationHelper do
  describe "#admin_user" do
    it "returns true" do
      user = FactoryGirl.create(:user)
      login_as(user, :scope => :user, :run_callbacks => false)
      helper.current_user.admin.should be_true
    end
  end
end
