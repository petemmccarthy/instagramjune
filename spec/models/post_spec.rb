require 'rails_helper'

# these are unit tests!!

RSpec.describe Post, :type => :model do
	describe '#tag_list=' do
		let(:post) { Post.create(title: 'Example post') }

		context 'no tags provided' do
			it 'gives 0 tags to the post' do
				post.tag_list = ''
				expect(post.tags).to be_empty
			end
		end
	end
end
