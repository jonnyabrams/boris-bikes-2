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

  # it 'releases a working bike' do
  #   docking_station = DockingStation.new
  #   bike = docking_station.release_bike
  #   expect(bike).to respond_to :working?
  # end

  it 'responds to dock method with argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'responds to bike method' do
    expect(subject).to respond_to(:bike)
  end 

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
  
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it 'raises error when no bikes available' do
    expect {subject.release_bike}.to raise_error "NO BIKES FOOL"
  end

  it 'raises error when trying to add more bikes than max capacity' do
    bike = Bike.new
    subject.dock(bike)
    expect {subject.dock(bike)}.to raise_error 'Already full!'
  end
    
end    

