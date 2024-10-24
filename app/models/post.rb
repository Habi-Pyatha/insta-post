class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  has_many :comments ,dependent: :destroy
  validates :photo, :description, :user_id, presence: true
  acts_as_votable
end
