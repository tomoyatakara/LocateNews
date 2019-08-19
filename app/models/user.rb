class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :article_comment, dependent: :destroy
  belongs_to :favorite, dependent: :destroy
  has_many :article_images, dependent: :destroy

end
