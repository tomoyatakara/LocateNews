class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :article_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :article_images, dependent: :destroy

  has_many :favorites, dependent: :destroy
  has_many :favorite_articles, through: :favolites, source: :story

  attachment :image
end
