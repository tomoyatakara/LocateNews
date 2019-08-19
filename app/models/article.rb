class Article < ApplicationRecord
	belongs_to :genre, optional: true
	belongs_to :region, optinal: true
	has_many :article_comments, dependent: :destroy
	has_many :favotites, dependent: :destroy

	def favorited_by?(user)
		favorites.where(user_id: user_id).exists?
	end

	attachment :image
end
