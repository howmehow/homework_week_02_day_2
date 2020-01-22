class Bus
  attr_accessor :route, :destination

    def initialize(route, destination)
      @route = route
      @destination = destination
      @passengers = []
    end
    def drive_method(method)
      return method
    end

    def how_many_passengers()
      return @passengers.size()
    end

    def passenger_pick_up(passenger)
      @passengers.push(passenger)
    end

    def passenger_drop_off(passenger)
      @passengers.delete(passenger)
    end
def empty_bus()
  @passengers.clear

end
  end
