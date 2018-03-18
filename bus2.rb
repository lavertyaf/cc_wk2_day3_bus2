require_relative('./person')
class Bus


attr_reader :route, :destination, :passengers

  def initialize(new_route_number, new_destination, new_passengers)

    @route = new_route_number
    @destination = new_destination
    @passengers = new_passengers
  end

  def bus_is_driving
    return "Brum brum"
  end

  def passenger_count
    return @passengers.length
  end

  def pick_up_passenger(person)
    @passengers << person
    return passenger_count
  end

  def drop_off_passenger
    @passengers.shift
    return @passengers
  end

  def empty_bus
    @passengers.clear
  end
end
