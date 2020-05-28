class InvolvedCompany < ApplicationRecord
  belongs_to :game
  belongs_to :company
  validates :developer, :publisher, inclusion: { in: [ true, false ] }
end
