require 'rails_helper'

describe 'navigate' do
	before do
		user = User.create!(email: "test@test.com" , password: "asdasd" , password_confirmation: "asdasd", first_name: "aragorn" , last_name: "son of arathorn")
	    login_as(@user, :scope => :user)
	end
	describe 'index' do
		before do
			visit posts_path
		end
		it 'can be reached' do
			expect(page.status_code).to eq(200)
		end
		it 'has posts?' do
			expect(page).to have_content(/Posts/)
		end
		it 'has a list of posts?' do
			post1 = Post.create!(date: Date.today, rationale: "Post1" , user_id: @user.id)
			post2 = Post.create!(date: Date.today, rationale: "Post2" , user_id: @user.id)
			visit posts_path
			expect(page).to have_content(/Post1|Post2/)
		end
	end	
	describe 'creation' do
		before do
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