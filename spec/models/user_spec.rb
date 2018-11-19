require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "creation" do
  	before do
  		@user = User.create!(email: "test@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "aragorn" , last_name: "son of arathorn")
  	end
  	it "can be created" do
  		
  		expect(@user).to be_valid
  	end
  	it "cannot be created without first_name, last_name" do
  		@user.first_name = nil
  		@user.last_name = nil
  		expect(@user).to_not be_valid
  	end
  end
end
