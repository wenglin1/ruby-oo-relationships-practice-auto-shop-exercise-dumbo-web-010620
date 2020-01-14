class Mechanic

  attr_reader :name, :specialty

  @@all = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def car_services #list cars that mechanics work on
    Car.all.select do |service| service.mechanic == self end
  end

  def specific_mech #list instances of owners per mechanic 
    car_services.map(&:car_owner)
  end

  def name_list #list names of owners per mechanic
    specific_mech.map(&:name)
  end

  def self.all
    @@all
  end
end
