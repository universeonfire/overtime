FactoryGirl.define do
	factory :post do
		date Date.today
		rationale "Bişeyler"
	end
	factory :second_post , class: "Post" do
		date Date.yesterday
		rationale "Dün Bişeyler"
	end
end