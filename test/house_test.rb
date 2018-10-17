require 'minitest/autorun'
require 'minitest/pride'
require './lib/house'
require './lib/room'

class HouseTest <MiniTest::Test

  def test_house_exists

    house = House.new(400000, "123, sugar lane")

    assert_instance_of House, house
  end

  def test_it_shows_price
    house = House.new(400000, "123 sugar lane")

    assert_equal 400000, house.price
  end
  def test_it_shows_rooms

    house = House.new(400000, "123 sugar lane")
    arr = []
    assert_equal arr, house.rooms
  end
  def test_it_shows_address
    house = House.new(400000, "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end





end
