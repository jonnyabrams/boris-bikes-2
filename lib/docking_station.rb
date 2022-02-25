require_relative 'bike'

class DockingStation  
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "NO BIKES FOOL" if empty?
    @bikes.pop 
  end

  def dock(bike)
    fail "Already full!" if full?
    @bikes << bike 
  end

  private

  def full?
    @bikes.length >= 20
  end 
  
  def empty?
    @bikes.empty?
  end
end   