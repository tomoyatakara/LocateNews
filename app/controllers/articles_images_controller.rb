class ArticleImagesController < ApplicationController

    def new
    end

	def create
	    @new_image = ArticleImage.new(post_image_params)
	    @new_image.user_id = current_user.id
	    @new_image.save
	    redirect_to new_user_path
	end

    def index
    end

    def show
    end

   	private
	def new_params
			params.require(:new).permit(:title, :text, :image)
	end

end
