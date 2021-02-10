class Gossip < ApplicationRecord
    belongs_to :user 
    has_many :cities, through: :users
    validates :title, length: { in: 3..14 }, presence: true
    validates :content, presence: true
end
