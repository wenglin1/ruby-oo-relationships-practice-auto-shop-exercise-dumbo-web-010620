require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Ken")
co2 = CarOwner.new("Mike")
co3 = CarOwner.new("Chad")

m1 = Mechanic.new("Dave", "Sport")
m2 = Mechanic.new("Rob", "Sedan")
m3 = Mechanic.new("Fred", "SUV")

c1 = Car.new("Honda", "Civic", "Sport",m2,co1)
c2 = Car.new("Honda", "Accord", "Sedan",m1,co2)
c3 = Car.new("Toyota", "Camry", "Sedan",m1,co3)
c4 = Car.new("Toyota", "Rav4", "SUV",m2,co3)
c5 = Car.new("Mercedes-Benz", "350", "Sport",m3,co3)
c6 = Car.new("Mercedes-Benz", "GLE", "SUV",m3,co1)
c7 = Car.new("BMW", "M3", "Sedan",m3,co1)
c8 = Car.new("BMW", "X5", "SUV",m3,co2)




binding.pry
