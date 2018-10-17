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

  # def test_it_can_get_rooms_of_category
  #   house = House.new("$400000", "123 sugar lane")
  #   room_1 = Room.new(:bedroom, 10, 13)
  #   room_2 = Room.new(:bedroom, 11, 15)
  #   room_3 = Room.new(:living_room, 25, 15)
  #   room_4 = Room.new(:basement, 30, 41)
  #   house.add_room(room_1)
  #   house.add_room(room_2)
  #   house.add_room(room_3)
  #   house.add_room(room_4)
  #   arr = [room_1, room_2]
  #
  #   assert_equal arr, house.rooms_from_category(:bedroom)
  #
  # end

  def test_if_house_can_total_area
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    assert_equal 1900, house.area
  end




end
