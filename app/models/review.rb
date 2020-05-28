class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewable, polymorphic: true
  validates :title, presence: true, length: { maximum: 400}, uniqueness: true
  validates :body, presence: true
  validates :te
end
