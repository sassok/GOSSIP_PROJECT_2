class User < ApplicationRecord
    has_many :gossips
    belongs_to :city
    validates :last_name, length: { minimum: 2 }, presence: true
    validates :first_name, length: { minimum: 2 }, presence: true
    validates :age, presence: true
    validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

    

end
