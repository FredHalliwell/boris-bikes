require './lib/bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20
  DEFAULT_BIKES_NUMBER = 10

  attr_reader :bikes, :capacity

  def initialize(num_bikes= DEFAULT_BIKES_NUMBER, capacity= DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    num_bikes.times{ @bikes << bike = Bike.new }
  end

  def release_bike
    return raise("No bikes available") unless !@bikes.empty?
    @bike = Bike.new
    
  end

  def return_bike(bike)
    return raise("Capacity is full") unless not full?
    @bikes << bike
  end

  private
  def full?
    return true unless @bikes.length < capacity
  end

end

docking_station = DockingStation.new