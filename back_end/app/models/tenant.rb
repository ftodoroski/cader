class Tenant < ApplicationRecord
    has_secure_password
    belongs_to :apartment

    validates :name, :password_digest, :email, presence: true 
    validates :email, uniqueness: true
end
