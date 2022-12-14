class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show destroy]
  before_action :set_service, only: [:new, :create]

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
    @booking.user = current_user
    if @booking.save
      redirect_to my_bookings_path(@booking)
    else
      render :new
    end
  end

  def my_bookings
    @bookings = Booking.all
    @user = current_user
    # @bookings = Booking.where(user: current_user)
  end

  def my_requests
    @bookings = Booking.all
    @user = current_user
    # @bookings = Booking.where(user: current_user)
  end

  def destroy
    @booking.destroy
    redirect_to services_path(@booking.service), status: :see_other
  end

  private

  def booking_params
    params.required(:booking).permit(:starting_date, :end_date, :service_id, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_service
    @service = Service.find(params[:service_id])
  end
end
