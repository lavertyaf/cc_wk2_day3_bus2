require('minitest/autorun')
require_relative('../bus_stop')
require_relative('../bus2')
require_relative('../person')

class BusStopTest < MiniTest::Test

  def setup

    @person1 = Person.new("Lewis", 29)
    @person2 = Person.new("Andris", 27)

    @bus_stop1 = BusStop.new("The Shore")
  end

  def test_add_person_to_queue
    assert_equal([@person2], @bus_stop1.add_person_to_queue(@person2))

  end

end
