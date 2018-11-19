require 'rails_helper'

describe 'navigate' do
	describe 'index' do
		it 'can be reached' do
			visit posts_path
			expect(page.status_code).to eq(200)
		end
		it 'has posts?' do
			visit posts_path
			expect(page).to have_content(/Posts/)
		end
	end	
	describe 'creation' do
		before do
			user = User.create!(email: "test@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "aragorn" , last_name: "son of arathorn")
			login_as(user, :scope => :user)
			visit new_post_path
		end
		it 'has a form can be reached?' do
			
			expect(page.status_code).to eq(200)
		end
		it 'can be created from new' do
			fill_in 'post[date]', with: Date.today
			fill_in 'post[rationale]', with: "today"
			click_on 'Save'
			expect(page).to have_content("today")
		end
		it 'user association?' do
			fill_in 'post[date]', with: Date.today
			fill_in 'post[rationale]', with: "User"
			click_on 'Save'
			expect(User.last.posts.last.rationale).to eq ("User")
		end
	end
end