class ArticleComment < ApplicationRecord
	belongs_to :user
	belongs_to :article
	belongs_to :user
end