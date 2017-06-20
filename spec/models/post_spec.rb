require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @user = User.create(email: "test@test.com", password: "asdfasdf",
    password_confirmation: "asdfasdf", first_name: "John",
    last_name: "Snow")
    @post = Post.create(date: Date.today, rationale: "Anyting", user_id: @user.id)
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
