class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :family_users, dependent: :destroy
  has_many :families, through: :family_users, dependent: :destroy
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :invitable

  # add photo when website in production
  validates :first_name, :last_name, presence: true

end
