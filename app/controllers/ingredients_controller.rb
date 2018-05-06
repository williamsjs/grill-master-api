class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :update, :destroy]

  def index
    @ingredients = Ingredient.all

    render json: @ingredients, status: :ok
  end

  def show
    render json: @ingredient, status: :ok
  end

  def create
    @ingredient = Ingredient.create!(ingredient_params)

    render json: @ingredient, statue: :created
  end

  def update
    @ingredient.update(ingredient_params)
    head :no_content
  end

  def destroy
    @ingredient.destroy
    head :no_content
  end

  private

  def ingredient_params
    params.permit(:name)
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

end
