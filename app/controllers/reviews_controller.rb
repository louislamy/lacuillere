class ReviewsController < ApplicationController
 before_action :find_restaurant, only: [ :new, :create, :show]
 def show
   @review = Review.find(params[:id])
 end

 def create
   @review = @restaurant.reviews.build(create_params)
   @review.save
   if @review.save
     redirect_to restaurant_path(@restaurant)
   else
     render :new
   end
 end

 def new
   @review = Review.new
 end

 private

 def create_params
   params.require(:review).permit(:content, :rating)
 end

 def find_restaurant
   @restaurant = Restaurant.find(params[:restaurant_id])
 end
end
