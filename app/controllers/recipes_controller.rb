class RecipesController < ApplicationController
  before_action :require_login

  def index
    @recipes = Recipes.all
  end

  def show
    @recipe = Recipes.find(params[:id])
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe), notice: "Recipe Created!"
    else
      @errors = @recipe.errors.full_messages
      render :new
    end
  end

  def destroy
    recipe = current_user.recipes.find(params[:id])
    recipe.destroy
    redirect_to recipes_path, notice: "Deleted Recipe: #{recipe.name}"
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :course, :genre, :created_by, :instructions, :is_gluten_free?, :is_vegan?)
  end
end
