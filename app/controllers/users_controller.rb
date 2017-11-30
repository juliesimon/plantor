class UsersController < ApplicationController
  before_action :set_user, only: [:plants, :dashboard, :update]

  def plants
    authorize @user
    @plants = Plant.where(user: params[:id])
  end

  def dashboard
    @plants = @user.plants
    @bookings = @user.bookings
    authorize @user
  end

  def update
    @user.update(user_params)
    authorize @user
    redirect_to dashboard_user_path(@user)
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

  def user_params
    params.require(:user).permit(:name, :plant_id, :username, :firstname, :lastname, :photo, :photo_cache)
  end
end
