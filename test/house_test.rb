require 'minitest/autorun'
require 'minitest/pride'
require './lib/house'
require './lib/room'

class HouseTest <MiniTest::Test

  def test_house_exists

    house = House.new(400000, "123, sugar lane")

    assert_instance_of House, house

  end




end
