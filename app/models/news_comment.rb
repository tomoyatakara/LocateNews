class NewsComment < ApplicationRecord
	has_many :user
	has_many :news
end