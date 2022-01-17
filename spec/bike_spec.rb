require 'dockingstation.rb'

describe Bike do
  it 'working?' do
    bike = Bike.new

    expect(bike.isWorking).to respond_to(true)
  end
end