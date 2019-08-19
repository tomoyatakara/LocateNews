class UsersController < ApplicationController

	def new
		@new = Article.new
	end

	def create
		@new = Article.new(new_image_params)

	end


	private
	def news_params
			params.require(:article).permit(:title, :text, :image)
	end
end


