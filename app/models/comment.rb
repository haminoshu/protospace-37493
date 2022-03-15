class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :avatar

  validates :comment, presence: true
end
