class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def create
    @restaurant = Restaurant.new(rest_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end
  def new
    @restaurant = Restaurant.new
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
