class FavoriteRecipesController < ApplicationController
     before_action :set_recipe

  def create
    if Favorite.create(favorited: @recipe, user: current_user)
      redirect_to @recipe, notice: 'Recipe favorited'
    else
      redirect_to @recipe, alert: 'Something went wrong.'
    end
  end

  def destroy
    Favorite.where(favorited_id: @recipe.rId, user_id: current_user.id).first.destroy
    redirect_to @recipe, notice: 'Recipe unfavorited.'
  end

  private

  def set_recipe
