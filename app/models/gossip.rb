class Gossip < ApplicationRecord
    belongs_to :user 
    validates :title, length: { in: 3..14 }, presence: true
    validates :content, presence: true
end
