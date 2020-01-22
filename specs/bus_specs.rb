require("minitest/autorun")
require("minitest/reporters")


MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../person")
require_relative("../bus")

class TestBus < MiniTest::Test
  def setup
    @bus = Bus.new(27, "Leith")
    @passenger1 = Person.new("Mike", 22)
    @passenger2 = Person.new("Bob", 90)

    @passengers_in_bus = [@passenger1, @passenger2]
  end
  def test_drive_method
    assert_equal("brum brum", @bus.drive_method("brum brum"))
  end

  def test_how_many_passengers
    assert_equal(0, @bus.how_many_passengers)
  end

  def test_passenger_pick_up
    assert_equal(1, @bus.passenger_pick_up(@passenger1).count())
  end

  def test_passenger_drop_off
    @bus.passenger_pick_up(@passenger2)
    @bus.passenger_drop_off(@passenger2)
    assert_equal(0, @bus.how_many_passengers)
  end

def test_empty_bus
  @bus.passenger_pick_up(@passenger2)
  @bus.empty_bus()
  assert_equal(0, @bus.how_many_passengers)
end

end
