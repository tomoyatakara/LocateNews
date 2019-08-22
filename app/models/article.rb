class Article < ApplicationRecord
	belongs_to :genre, optional: true
	belongs_to :region, optional: true
	has_many :article_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :favoring_users, through: :favorites, source: :user


	def favorited_by?(user)
	 	favorites.where(user_id: user.id).exists?
	end

	# attachment :image かぶっていたところ
end

