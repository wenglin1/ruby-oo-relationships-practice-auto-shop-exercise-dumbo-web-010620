class Car #the CLASS that connects mechanic and car_owner
  #a mechanic work on multiple cars
  #an owner have more than one car

  attr_reader :make, :model, :classification, :mechanic, :car_owner

  @@all = [] #class variable
  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner

    @@all << self #shovel in instance of Car to create an array
  end

  def self.all #class method
    @@all
  end

  def self.list_class #list different classfications
    self.all.map do |car| car.classification end.uniq

  #all.map(&:classification)
  end

  def mech_list
    Mechanic.all.select {|mechanic_instance| 
      mechanic_instance.specialty == self.classification}
  end
end