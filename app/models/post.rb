class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :description, :photo, presence: true

  scope :by_created_at_desc, -> { order(created_at: :desc) }
end
