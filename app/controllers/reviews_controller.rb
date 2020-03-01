class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)

		 	redirect_to "/recipes/#{review_params[:recipe_id]}"
  end




  private

  def review_params
  params.require(:review).permit(:user_id, :recipe_id, :content)
end
end
