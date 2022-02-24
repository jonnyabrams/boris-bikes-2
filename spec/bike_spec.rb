require 'docking_station'

describe Bike do
  it 'responds to method called working?' do
    expect(subject).to respond_to :working?
  end    
end
