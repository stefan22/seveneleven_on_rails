class ReviewsController < ApplicationController

  def new
    @seven = Seven.find(params[:seven_id])
    @review = Review.new
  end

  def create
    @seven = Seven.find(params[:seven_id])
    @seven.reviews.create(review_params)
    redirect_to sevens_path
  end

  def review_params
    params.require(:review).permit(:thoughts, :rating)
  end

end
