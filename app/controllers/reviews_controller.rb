class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id
    @review.restaurant = @restaurant
    # ^ this sets the restaurant_id to 8 (or whatever is in the URL)
    if @review.save
      # YAY, it saved successfully
      redirect_to restaurant_path(@restaurant) # restaurants#show
    else
      # NOOOO, it didn't save
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
