class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  # validates :comment, :user_id, :post_id, presence: true
end
