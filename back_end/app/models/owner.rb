class Owner < ApplicationRecord
    has_secure_password
    has_many :properties

    validates :name, :password_digest, :email, presence: true 
    validates :email, uniqueness: true
    
end
