require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
class RoomTest <MiniTest::Test

  def test_room_exists
    room = Room.new("test", 5, 6)

    assert_instance_of Room, room
  end

  def test_room_category
    room = Room.new(:room, 10, 13)

    assert_equal :room, room.category
  end

  def test_room_can_calc_area

    room = Room.new(:room, 10, 13)

    assert_equal 130, room.area
  end

  


end
