class DockingStation

  def release_bike
    @bike = Bike.new
  end

  def working?(object)
    if object.has_wheels
      return true
    else   
      return false
    end
  end
end

class Bike

  def has_wheels
    return true
  end

end



docking_station = DockingStation.new

my_bike = Bike.new



docking_station.release_bike

puts docking_station.working?(my_bike)