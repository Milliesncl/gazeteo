class Family < ApplicationRecord
  has_many :family_users
  has_many :users, through: :family_users
  has_many :members
  has_one_attached :photo
end
