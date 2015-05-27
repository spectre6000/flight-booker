class Airport < ActiveRecord::Base
<<<<<<< HEAD
  has_many :departing_flights, :foreign_key => "origin", class_name: "Flight"
  has_many :arriving_flights, :foreign_key => "destination", class_name: "Flight"
=======
>>>>>>> c3a9b1ce3e316c4225d9e7fdabe73468eff4e72f
end
