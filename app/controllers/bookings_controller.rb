class BookingsController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new(booking_params)
    start_date = @booking.starts_at.to_i
    end_date = @booking.ends_at.to_i
    @booking.total_price = (end_date - start_date) / 86400 * @plant.price_per_day
    @booking.user = current_user
    @booking.plant = @plant
    if @booking.save
      redirect_to plant_path(@plant)
    else
      render 'plants/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
