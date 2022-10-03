class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description
  belongs_to :size
  belongs_to :color
  belongs_to :category
  belongs_to :manufacturer
  belongs_to :seller  


  def description
    
     "this product color is #{object.color.name}, the category is #{object.category.name}, manufacturer is #{object.manufacturer.name}, seller is #{object.seller.name}. Current inventory is #{object.inventory}."
    #  "this product color is #{Color.name}, the category is #{category.name}, manufacturer is #{manufacturer.name}."
  end
end
