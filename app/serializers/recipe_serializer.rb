class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :ingredients, :instructions, :likes, :image, :preptime, :cooktime, :category_id
  belongs_to :category
end
