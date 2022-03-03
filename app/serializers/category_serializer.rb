class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image
  has_many :recipes
end
