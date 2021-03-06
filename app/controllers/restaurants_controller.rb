class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all.order(name: :asc)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant}
      else
        format.html { render action: 'new' }
      end
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address, :city, :state, :zip_code, :description)
  end
end
