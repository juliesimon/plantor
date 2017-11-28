class BookingsController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.new(booking_params)
    start_date = @booking.starts_at.to_i
    end_date = @booking.ends_at.to_i
    @booking.total_price = (end_date - start_date) / 86400 * @plant.price_per_day
    @booking.user = current_user
    @booking.plant = @plant
    @booking.status = "pending"
    authorize @booking
    if @booking.save
      redirect_to plant_path(@plant)
    else
      set_disabled_dates # method defined in ApplicationController
      render 'plants/show'
    end
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "accepted"
    authorize @booking
    if @booking.save
      redirect_to dashboard_user_path(current_user)
    else
      render 'plants/show'
    end
  end

  def decline
    @booking = Booking.find(params[:booking_id])
    @booking.status = "declined"
    authorize @booking
    if @booking.save
      redirect_to dashboard_user_path(@booking.user)
    else
      render 'plants/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
