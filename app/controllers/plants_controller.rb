class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = User.first
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new
    end
  end

  def update
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :instruction, :price_per_day, :category, :address)
  end
end