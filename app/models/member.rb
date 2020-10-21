class Member < ApplicationRecord
    has_one_attached :photo
    belongs_to :family

    validates :first_name, :last_name, :address, :birthday, presence: true
end
