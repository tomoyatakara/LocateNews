class NewsImagesController < ApplicationController

    def new
    end

	def create
	    @news_image = NewsImage.new(post_image_params)
	    @news_image.user_id = current_user.id
	    @news_image.save
	    redirect_to new_user_path
	end

    def index
    end

    def show
    end
end
