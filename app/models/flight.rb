class Flight < ActiveRecord::Base
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"
  has_many :bookings
  has_many :passengers, :through => :bookings

  def self.search(params)
    if params && !params[:date].nil?
      Flight.on_date(params[:date])
        .where(:origin => params[:origin], :destination_id => params[:destination])
        # .includes(:origin, :destination)
    end
  end

  def self.on_date(day)
    # elegant solution from: http://stackoverflow.com/questions/2381718/rails-activerecord-date-between
    where(:date => day.to_date.beginning_of_day..day.to_date.end_of_day)
  end

end
