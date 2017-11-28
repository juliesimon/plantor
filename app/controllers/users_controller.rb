class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_user, only: [:show, :dashboard]
  def show
    authorize @user
  end

  def dashboard
    @user = User.find(params[:id])
    # @booking = Booking.find(params[:id])
    authorize @user
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

  def plant_params
    params.require(:plant).permit(:name, :instruction, :price_per_day, :category, :address, :plant_id)
  end
end
