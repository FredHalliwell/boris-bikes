require 'dockingstation.rb'

describe DockingStation do
  it 'can release bike' do
    station = DockingStation.new

    expect(station.release_bike).to eq (true)
  end
end