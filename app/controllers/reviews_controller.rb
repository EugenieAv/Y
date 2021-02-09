class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
  end

  def create
    @review = Review.new(params_review)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new"
    end
  end

  private

  def params_review
    params.require(:review).permit(:rating, :content)
  end
end
