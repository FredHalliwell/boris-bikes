require 'dockingstation.rb'

describe Bike do

  it 'responds to method working' do
    expect(subject).to respond_to(:working)
  end

  it 'working?' do
    docking_station = DockingStation.new

    expect(docking_station.release_bike.working).to eq(true)
  end
end