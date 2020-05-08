class RecipesController < ApplicationController
  before_action :require_login

  def index
    @recipes = Recipe.all

    render json: @index.to_json
  end

  def show
    @recipe = Recipe.find(params[:id])

     render json: @show.to_json
  end

  def new
    @recipe = current_user.recipes.build
    |
       render json: @new.to_json
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)

    if @recipe.save
      render json: @recipe.to_json
    else

      render json: "Failed to create recipe"
    end
  end

  def destroy
    recipe = current_user.recipes.find(params[:id])
    recipe.destroy
    
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :course, :genre, :created_by, :instructions, :is_gluten_free?, :is_vegan?)
  end
end
