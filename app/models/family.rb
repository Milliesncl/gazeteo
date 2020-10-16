class Family < ApplicationRecord
  has_one_attached :photo
  has_many :family_users
  has_many :users, through: :family_users
end
