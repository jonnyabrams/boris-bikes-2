require 'docking_station'
require 'bike'

describe DockingStation do
  it 'responds to release_bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end

  # it 'releases a bike and says if it is working' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  it 'releases a working bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to respond_to :working?
  end
end    

