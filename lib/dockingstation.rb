require './lib/bike.rb'

class DockingStation

  attr_reader :bikes, :capacity

  def initialize(num_bikes=10, capacity=100)
    @bikes = []
    @capacity = capacity
    num_bikes.times{ @bikes << bike = Bike.new }
    end

  def release_bike
    #puts "Bike released"
    if !@bikes.empty?
      @bike = Bike.new
    else
      raise("No bikes available")
    end
  end

  def return_bike(bike)
    return raise("Capacity is full") unless @bikes.length < capacity
    
    @bikes << bike
  end

end

docking_station = DockingStation.new



#docking_station.release_bike

#puts docking_station.working?(docking_station.release_bike)
