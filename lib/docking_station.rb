require_relative 'bike'

class DockingStation  
attr_reader :bike

  def release_bike
    fail "NO BIKES FOOL" unless @bike
    @bike 
  end

  def dock(bike)
    fail "Already full!" if @bike
    @bike = bike 
  end

end   