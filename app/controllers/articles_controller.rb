class ArticlesController < ApplicationController

	def index
		# newsapi = Article.new("67f6f9daca624af0bc02696977dafadb")
		# @top_headlines = newsapi.get_top_headlines(sources: 'Newsbtc.com')
		@articles = Article.all.limit(33)
	end

	def show
		# newsapi = Article.new("67f6f9daca624af0bc02696977dafadb")
		# @top_headlines = newsapi.get_top_headlines(sources: 'google-news')
	end

	def new
		@new = New.new
	end

	def create
		@new = New.new(news_params)
		@newimage.user_id = current_user.id
		@new.save
		redirect_to admins_path
	end

    private
	def news_params
		params.require(:new).permit(:title, :text, :image)
	end
end


	    # <div class="row">
	    # 	<%= @news.each do |n| %>
	    # 		<div class="col-md-4">
	    # 	    <div class="well user-news">
	    # 	    	<%= link_to news_path(n)  do %>
	    # 			<%= attachment_imge_tag n, :image, format: 'jpeg', fallback: "noimage.jpg", size: "100×100" %>
	    # 			<%= news.title %>
	    # 			<%= news.text %>
	    # 			<% end %>
	    # 		</div>
	    # 		</div>
	    # 	<% end %>
	    # </div>