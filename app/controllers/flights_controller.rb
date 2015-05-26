class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map{ |x| x.code}
    @passengers = [1,2,3,4].map
    @dates = Flight.all.map{ |z| z.date.strftime("%m/%d/%Y") }.uniq
  end

end
