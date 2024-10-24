class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  has_many :comments
  validates :photo, :description, presence: true
end
