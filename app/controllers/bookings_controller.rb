class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show destroy]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.save
    redirect_to service_path(@service)
  end


  def destroy
    @booking.destroy
    redirect_to services_path(@booking.service), status: :see_other
  end

  private

  def booking_params
    params.required(:booking).permit(:starting_date, :end_date, :user_id, :service_id)
  end
  def set_booking
    @booking = Booking.find(params[:id])
  end
  def set_service
    @service = Service.find(params[:service_id])
  end
end
