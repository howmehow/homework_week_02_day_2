require("minitest/autorun")
require("minitest/reporters")


MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../person")
require_relative("../bus")

class TestPerson < MiniTest::Test
  def setup
    @person = Person.new("Nick", 22)
  end
  
end
