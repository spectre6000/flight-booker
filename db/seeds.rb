Airport.delete_all

sfo = Airport.create!(code: "SFO")
nyc = Airport.create!(code: "NYC")

Flight.delete_all

sfo1 = Flight.create!(origin: sfo, destination: nyc, duration: 3, date: (Time.now + 1.day))
sfo2 = Flight.create!(origin: sfo, destination: nyc, duration: 3, date: (Time.now + 2.day))
sfo3 = Flight.create!(origin: sfo, destination: nyc, duration: 3, date: (Time.now + 3.day))
sfo4 = Flight.create!(origin: sfo, destination: nyc, duration: 3, date: (Time.now + 4.day))
sfo5 = Flight.create!(origin: sfo, destination: nyc, duration: 3, date: (Time.now + 5.day))
sfo6 = Flight.create!(origin: sfo, destination: nyc, duration: 3, date: (Time.now + 6.day))
nyc1 = Flight.create!(origin: nyc, destination: sfo, duration: 3, date: (Time.now + 1.day)) 
nyc2 = Flight.create!(origin: nyc, destination: sfo, duration: 3, date: (Time.now + 2.day))
nyc3 = Flight.create!(origin: nyc, destination: sfo, duration: 3, date: (Time.now + 3.day))
nyc4 = Flight.create!(origin: nyc, destination: sfo, duration: 3, date: (Time.now + 4.day))
nyc5 = Flight.create!(origin: nyc, destination: sfo, duration: 3, date: (Time.now + 5.day))
nyc6 = Flight.create!(origin: nyc, destination: sfo, duration: 3, date: (Time.now + 6.day))
