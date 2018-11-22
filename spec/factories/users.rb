FactoryGirl.define do
	factory :user do
		first_name "lol"
		last_name "slave"
		email "test@test.com"
		password "asdqweqwe"
		password_confirmation "asdqweqwe"
		 
	end
	factory :admin_user , class: "AdminUser" do
		first_name "admin"
		last_name "master"
		email "test@admin.com"
		password "asdqweqwe"
		password_confirmation "asdqweqwe"
		
	end
end