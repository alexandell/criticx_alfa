class InvolvedCompany < ApplicationRecord
  belongs_to :game
  belongs_to :company
  validates :developer, presence: true
  validates :publisher, presence: true
end
