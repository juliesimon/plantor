class UsersController < ApplicationController
  before_action :set_user, only: [:show, :dashboard]
  def show
  end

  def dashboard
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
