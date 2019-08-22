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

	# def after_sign_in_path_for(resource)
 #      case resource
 #      when Admin
 #        admins_link_path
 #      when User
 #        root_path
 #      end
 #    end

 #    def after_sign_out_path_for(resource)
 #      root_path
 #    end # ログアウト後に遷移するpathを設定


end
