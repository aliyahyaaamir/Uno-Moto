class TagsController < ApplicationController

	def new
		@tag = Tag.new
	end

	def update
		@tag = Tag.new()
	end

end
