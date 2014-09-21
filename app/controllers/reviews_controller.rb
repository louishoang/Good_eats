class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        render 'new'
      end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :description, :restaurant_id)
  end
end
