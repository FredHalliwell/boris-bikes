require 'dockingstation.rb'

describe DockingStation do


  it 'can release bike' do

    docking_station = DockingStation.new

    bike = docking_station.release_bike

    expect(docking_station.release_bike.class).to eq(Bike)
  end

  it 'checks bike works' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working).to eq(true)
  end

  it 'can dock a bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docking_station.return_bike(bike)

    expect(docking_station.bikes.include?(bike)).to eq(true)
  end

  it "won't return a bike if there are no bikes" do 
    docking_station = DockingStation.new(0)
    
    expect{docking_station.release_bike}.to raise_error("No bikes available")
  end

  it 'doesnt accept more bikes than capacity' do
    docking_station = DockingStation.new(20)

    bike = docking_station.release_bike

    expect{docking_station.return_bike(bike)}.to raise_error("Capacity is full")
  end

  it 'allows capacity to be assigned' do
    docking_station = DockingStation.new(1,100)

    expect((docking_station.capacity)).to eq (100)
  end

end