require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
      @user = User.create(email:'test@test.com', password:'abcdef', password_confirmation:'abcdef', first_name:'john',last_name: 'snow')
  end

  describe "creation" do
    
    it "can be crerated" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name last_name" do
      @user.first_name= nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end

  describe 'custom name methods' do
    it 'has a full name method that combines first and last name' do 
      expect(@user.full_name).to eq("SNOW,JOHN")
    end
  end
end
