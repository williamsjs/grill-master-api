class RecipesController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]
  before_action :set_recipe, only: [:show, :update, :destroy]

  def index
    @recipes = Recipe.all

    render json: @recipes, status: :ok
  end

  def show
    render json: @recipe, status: :ok
  end

  def create
    @recipe = Recipe.create!(recipe_params)

    render json: @recipe, statue: :created
  end

  def update
    @recipe.update(recipe_params)
    head :no_content
  end

  def destroy
    @recipe.destroy
    head :no_content
  end

  private

  def recipe_params
    params.permit(:name)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

end
