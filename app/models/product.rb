class Product < ApplicationRecord
    validates :stock, numericality: {greater_than_or_equal_to: 0}
    
    has_many :product_categories, dependent: :destroy
    has_many :categories, through: :product_categories
end
