require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @user = FactoryGirl.create(:user)
    @post = FactoryGirl.create(:post)
  end

  describe "creation" do

    it "can be created" do
      expect(@post).to be_valid
    end

    it "cannot be created without a date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end

  describe "custom name method" do
    it "has a full name method that combines first and last name" do
      expect(@user.full_name).to eq("SNOW, JOHN")
    end
  end
end
