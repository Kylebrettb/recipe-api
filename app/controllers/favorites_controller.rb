class FavoriteRecipesController < ApplicationController
     before_action :set_recipe

     def create
    @favorite = Favorite.new
    @favorite.user_id = params[:user_id]
    @favorite.recipe_id = params[:recipe_id]
    if @favorite.save
      render json: @favorite.to_json

else
  render json: "Failed to create favorite"
    end


  end

  def destroy
    @favorite = Favorite.find params[:id]
    @favorite.destroy 

  end

  private

  def set_recipe
