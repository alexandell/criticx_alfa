class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true


    has_many :reviews
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validate :validate_age
  private
  def validate_age
    if birth_date.present? && birth_date > 16.years.ago.to_date
      errors.add(:birth_date, "You should be 16 years old to create an account")
    end
  end
end
