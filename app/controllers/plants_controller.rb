class PlantsController < ApplicationController
before_action :find_plant, only: [:show, :edit, :update, :destroy]
skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @plants = Plant.all
  end

  def show
    @booking = Booking.new
    authorize @plant
    @disabled = []
    @plant.bookings.each do |booking|
      start = booking.starts_at - 1.day
      @disabled << { from: start, to: booking.ends_at}
    end
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
