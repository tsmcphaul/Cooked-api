class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  # GET /categories
  def index
    categories = Category.all

    render json: CategorySerializer.new(categories)
  end

  # GET /categories/1
  def show
    category = Category.find(params[:id])
    render json: category
  end

  # POST /categories
  def create
    category = Category.new(category_params)

    if category.save
      render json: CategorySerializer.new(category), status: :created, location: category
    else
      render json: category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if category.update(category_params)
      render json: category
    else
      render json: category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    category = Category.find(params[:id])
    category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :image)
    end
end
