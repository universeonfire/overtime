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
	end
end