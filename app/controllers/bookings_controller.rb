class BookingsController < ApplicationController

  def new
    @flight = Flight.find_by(params[:flight_id])
    @booking = @flight.bookings.build
    params[:passengers].to_i.times {@booking.passengers.build}    
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      @passengers = @booking.passengers
      @passengers.each do |passenger| 
        PassengerMailer.thank_you_email(passenger).deliver_now
      end
      render 'show'
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, :passengers_attributes => [:name, :email] )
    end

end
