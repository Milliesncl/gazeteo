class Family < ApplicationRecord
  has_one_attached :photo
  has_many :families_users
  has_many :users, through: :family_user
end
