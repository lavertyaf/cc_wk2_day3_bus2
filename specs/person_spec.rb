require('minitest/autorun')
require_relative('../person')

class PersonTest MiniTest::Test

  def setup

    @person1 = Person.new("Lewis", 29)
    @person2 = Person.new("Andris", 27)
  end

  def test_passenger_has_name
    assert_equal("Lewis", @person1.name)
  end

  def test_passenger_has_age
    assert_equal(29, @person1.age)
  end

end
