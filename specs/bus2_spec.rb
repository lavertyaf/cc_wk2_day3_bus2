require('minitest/autorun')
require_relative('../bus2')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup

    @bus = Bus.new(22, "Ocean Terminal", [])

    @person1 = Person.new("Lewis", 29)
    @person2 = Person.new("Andris", 27)
  end

  def test_bus_has_a_number
    assert_equal(22, @bus.route)
  end

  def test_bus_has_a_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_bus_is_driving
    assert_equal("Brum brum", @bus.bus_is_driving)
  end

  def test_how_many_passengers
    assert_equal(0, @bus.passenger_count)
  end

  def test_pick_up_passenger
    assert_equal(1, @bus.pick_up_passenger(@person1))
  end

  def test_drop_off_passenger
    @bus.pick_up_passenger(@person1)
    @bus.pick_up_passenger(@person2)
    assert_equal([@person2], @bus.drop_off_passenger)
  end

  def test_empty_bus
    @bus.pick_up_passenger(@person1)
    @bus.pick_up_passenger(@person2)
    @bus.empty_bus
    assert_equal(0, @bus.passenger_count)
  end

end
