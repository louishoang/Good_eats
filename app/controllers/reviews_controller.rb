class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:question_id])
    @review = @restaurant.reviews.build(review_params)
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        # @answers = @question.answers
        # render 'questions/show'
      end

  end

private
    def answer_params
      params.require(:answer).permit(:description, :user_id)
    end

end
