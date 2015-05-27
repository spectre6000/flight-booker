class FlightsController < ApplicationController

  def index
    @flights = Flight.search(params)
    @airports = Airport.all.map{ |x| [x.code, x.id] }
    @passengers = [1,2,3,4].map
    @dates = Flight.all.map{ |z| [z.date.strftime("%m/%d/%Y"), z.date] }
  end

end
