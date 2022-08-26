class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @painting = Painting.find(params[:painting_id])
    @review.painting = @painting
    @review.save!
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
