class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to dashboard_user_path(current_user)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)

  end
end
