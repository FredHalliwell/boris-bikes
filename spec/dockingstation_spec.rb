require 'dockingstation.rb'

describe DockingStation do
  it 'can release bike' do
    docking_station = DockingStation.new

    expect(docking_station.release_bike).to respond_to(true)
  end
end