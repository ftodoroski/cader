class Property < ApplicationRecord
    belongs_to :owner
    has_many :apartments 
    has_many_attached :images 

    
end
