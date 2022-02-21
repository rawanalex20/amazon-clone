class Item < ApplicationRecord
    has_one_attached :cover
    has_many_attached :uploads

    validates :name, :price, presence: true
    validates :price, numericality: true
    validates :cover, presence: true

    
end
