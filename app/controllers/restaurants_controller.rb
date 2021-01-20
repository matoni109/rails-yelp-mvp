class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # raise
  end
  #CREATE
  def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      # no need for app/views/restaurants/create.html.erb
      redirect_to restaurant_path(@restaurant) # restaurants ( pural will take u to All )
    else
      render :new
    end
  end

  # UPDATE
  def edit
    # @restaurants = Restaurant.find(params[:id])
  end

  def update
    # @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      # no need for app/views/restaurants/update.html.erb
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destory
    # @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path
  end
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def find_restaurant_params
    @restaurant = Restaurant.find(params[:id])
  end


end
