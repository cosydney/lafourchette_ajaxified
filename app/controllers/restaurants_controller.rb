class RestaurantsController < ApplicationController
   def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new  # <-- You need this now.
  end


   def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end
end
