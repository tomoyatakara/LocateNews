class News < ApplicationRecord
	has_many :genres
	has_many :regions
	belongs_to :user
	has_many news_comments, dependent: :destroy
	has_many favotites, dependent: :destroy

	def favorited_by?(user)
		favorites.where(user_id: user_id).exists?
	end
end
