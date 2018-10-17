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

  def test_it_can_add_rooms
    house = House.new(400000, "123 sugarlane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_1)
    house.add_room(room_2)
    assert_equal 2, house.rooms.count
  end







end
