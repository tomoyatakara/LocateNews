class AdminsController < ApplicationController

    def index
		newsapi = News.new("67f6f9daca624af0bc02696977dafadb")
		@top_headlines = newsapi.get_top_headlines(sources: 'google-news')
	end

	def new
		@new = News.new
	end

    def show
    end



end
