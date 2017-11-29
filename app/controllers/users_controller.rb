class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :update]
  before_action :set_user, only: [:show, :dashboard, :update]

  def show
    authorize @user
  end

  def dashboard
    @plants = @user.plants
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
