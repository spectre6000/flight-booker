class Airport < ActiveRecord::Base

  has_many :departing_flights, :foreign_key => "origin", class_name: "Flight"
  has_many :arriving_flights, :foreign_key => "destination", class_name: "Flight"

end
