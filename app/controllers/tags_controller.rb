class TagsController < ApplicationController

	def show
		# use a key value to specify the column we want to look for
		@tag = Tag.find_by!(text: '#' + params[:id]) 
	end

end
