class UsersController < ApplicationController

	def new
		@news = News.new
	end

	def create
		@news = News.new(news_params)
		@news.save
	end


	private
	def news_params
			params.require(:news).permit(:title, :text, :image)
	end
end


