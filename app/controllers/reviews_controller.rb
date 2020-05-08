class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)

       render json: @review.to_json
  end




  private

  def review_params
  params.require(:review).permit(:user_id, :recipe_id, :content)
end
end
