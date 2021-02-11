class User < ApplicationRecord

    has_secure_password
    
    has_many :gossips
    validates :name, length: { minimum: 2 }, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
    validates :password, presence: true, length: { minimum: 6 }

end
