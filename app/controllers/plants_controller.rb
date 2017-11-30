class PlantsController < ApplicationController
before_action :find_plant, only: [:show, :edit, :update, :destroy]
skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @plants = Plant.where.not(latitude: nil, longitude: nil)
    @markers = @plants.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude
      }
    end
    if params[:query].present?
      @plants = Plant.search_by_name_and_category(params[:query])
    else
      @plants = Plant.all
    end
  end

  def show
    @booking = Booking.new
    authorize @plant
    set_disabled_dates # method defined in ApplicationController
    @marker = [{ lat: @plant.latitude, lng: @plant.longitude }]
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = User.first
    authorize @plant
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new
    end
  end

  def edit
    authorize @plant
  end

  def update
    authorize @plant
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :edit
    end
  end

  def destroy
    authorize @plant
    @plant.destroy
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :instruction, :price_per_day, :category, :address, :photo)
  end

  def find_plant
    @plant = Plant.find(params[:id])
  end
end
