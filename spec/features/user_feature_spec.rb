require 'rails_helper'

describe 'user' do 
	context 'when logged out' do 
		it 'should not be able make posts when logged out' do 
			visit('/')
			fill_in 'post_title', with: "london"
			click_button 'Add post'
			expect(current_path).to eq new_user_session_path
		end 
	end 

	context 'when logged in' do 

		before(:each) do 
			alex = User.create(email: "a@a.com", username: 'peter', password: "123456789", password_confirmation: "123456789")
			login_as("a@a.com", 'peter', "123456789")
		end 

		it 'should be able to make posts when logged in' do 

			visit '/'
			fill_in 'post_title', with: "peter"
			click_button 'Add post'
			expect(page).to have_content 'london'
		end 
	end 
end 