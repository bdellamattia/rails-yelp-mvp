class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]


  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @reviews = Review.where(restaurant: @restaurant)
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :review)
  end

  def set_restaurant
     @restaurant = Restaurant.find(params[:id])
  end

end

