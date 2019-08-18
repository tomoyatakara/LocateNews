class Favorite < ApplicationRecord
	has_many :user
	has_many :newses
end
