class Property < ApplicationRecord
    belongs_to :owner
    has_many :apartments, dependent: :destroy
    has_many_attached :images, dependent: :destroy 

end
