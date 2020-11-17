class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

    # add photo when website in production
  validates :description, presence: true

  scope :by_created_at_desc, -> { order(created_at: :desc) }
end
