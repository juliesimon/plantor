class BookingsController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new(booking_params)
    @booking.total_price = @
    @booking.user = current_user
    if @booking.save
      redirect_to plants_path
    else
      render ''
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :category, :address)
  end
end
