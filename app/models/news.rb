class News < ApplicationRecord
	belongs_to :genres
	belongs_to :regions
	belongs_to :news_comments, dependent: :destroy
	belongs_to :favotites, dependent: :destroy
	belongs_to :user

	def favorited_by?(user)
		favorites.where(user_id: user_id).exists?
	end

	attachement :image
end
