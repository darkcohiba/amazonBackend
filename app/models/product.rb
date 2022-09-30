class Product < ApplicationRecord
  belongs_to :size
  belongs_to :color
  belongs_to :category
  belongs_to :manufacturer
  belongs_to :seller
end
