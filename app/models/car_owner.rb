class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    
    @@all << self
  end

  def car_list #list cars owners own
    Car.all.select {|cars| cars.car_owner == self}
  end

  def mech_list #list mechanics owners go to 
    self.car_list.map(&:mechanic)
  end

  def self.all
    @@all
  end

  def self.average_car #average amt of cars per owner
    Car.all.count.to_f / all.count
  end

end
