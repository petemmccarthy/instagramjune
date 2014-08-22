require 'rails_helper'

describe 'maps' do
	before do
		Post.create(title: 'Post with address', address: '25 City Road, London')
	end

	it 'displays a map when the Map button is clicked', js: true do
		visit '/posts'
		click_link 'Map'
		# ttesting for presence of google maps
		expect(page).to have_css '.gm-style'		
	end
end
