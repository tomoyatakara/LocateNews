class News < ApplicationRecord
	has_many :genres
	has_many :regions
	has_many :goods

end
