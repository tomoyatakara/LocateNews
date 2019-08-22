class RegionsController < ApplicationController

	def index
		@regions = Region.all
    end

    def show
    	# @region = Region.find(params[:id])
    	@articles = Article.where(region_id: params[:id]).limit(33)
    end

  def create
    @article = Article.find(params[:article_id])
    favorite = current_user.favorites.build(article_id: params[:article_id])
    favorite.save
  end

  def destroy
    @article = Article.find(params[:article_id])
    favorite = Favorite.find_by(article_id: params[:article_id], user_id: current_user.id)
    favorite.destroy
  end
end
