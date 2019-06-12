require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      # user=User.create!(email:'test@test.com', last_name:'last',first_name:'first' , password: 'abcdef' , password_confirmation:'abcdef')
      # @post = Post.create(user_id: user.id,date: Date.today, rationale: "Anything")
      @post =FactoryBot.create(:post)
    end
    it "can be created" do

      expect(@post).to be_valid
    end

    it "cannot be created without a date and rationale" do
      @post.date = nil
      @post.rationale=nil
      expect(@post).to_not be_valid
    end
  end
  
end
