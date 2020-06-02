class Platform < ApplicationRecord
    has_and_belongs_to_many :games
    enum category: { console: 1, arcade: 2, platform: 3, 
        operating_system: 4, portable_console: 5, computer: 6 }
    validates :name, presence: true, uniqueness: true
    validates :category, presence: true    
end
