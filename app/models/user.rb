class User < ApplicationRecord
  has_many :posts
  has_many :family_users
  has_many :families, through: :family_users
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
