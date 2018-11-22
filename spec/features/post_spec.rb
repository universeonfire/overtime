require 'rails_helper'

describe 'navigate' do
	before do
		@user = FactoryGirl.create(:user)
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
			post1 = FactoryGirl.create(:post)
			post2 = FactoryGirl.create(:second_post)
			visit posts_path
			expect(page).to have_content(/Bişeyler|Dün Bişeyler/)
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