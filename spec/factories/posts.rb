FactoryGirl.define do
	factory :post do
		date Date.today
		rationale "Bişeyler"
		user_id "1"
	end
	factory :second_post , class: "Post" do
		date Date.yesterday
		rationale "Dün Bişeyler"
		user_id "2"
	end
end