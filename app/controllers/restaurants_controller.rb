class RestaurantsController < ApplicationController
 def index
   @restaurants = Restaurant.all
 end

 def show
   @restaurant = Restaurant.find(params[:id])
 end

 def create
  @restaurant = Restaurant.new(create_params)
   if @restaurant.save
   redirect_to restaurant_path(@restaurant)
   else
    render :new
   end
 end

 def new
   @restaurant = Restaurant.new
 end

 private

 def create_params
   params.require(:restaurant).permit(:name, :address, :phone_number, :category)
 end
end
