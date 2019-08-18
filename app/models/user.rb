class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :news_comments, dependent: :destroy
  belongs_to :favorites, dependent: :destroy
  has_many :news_imges, dependent: :destroy
  has_many :news
end
