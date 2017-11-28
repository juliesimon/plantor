class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_user, only: [:show, :dashboard]
  def show
  end

  def dashboard
    @user = User.find(params[:id])
    @plants = @user.plants
    authorize @user
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

  def user_params
    params.require(:user).permit(:name, :plant_id)
  end
end
