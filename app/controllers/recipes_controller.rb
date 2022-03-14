class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    recipes = Recipe.all

    render json: RecipeSerializer.new(recipes)
  end

  # GET /recipes/1
  def show
    recipe = Recipe.find(params[:id])
    render json: recipe
  end

  # POST /recipes
  def create
    recipe = Recipe.new(recipe_params)

    if recipe.save
      render json: RecipeSerializer.new(recipe), status: :created, location: recipe
    else
      render json: recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if recipe.update(recipe_params)
      render json: recipe
    else
      render json: recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    recipes = Recipe.all
    render json: RecipeSerializer.new(recipes)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      recipe = Recipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_params
      params.require(:recipe).permit(:name, :ingredients, :instructions, :likes, :image, :preptime, :cooktime, :category_id)
    end
end
