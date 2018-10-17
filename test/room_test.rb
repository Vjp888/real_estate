require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
class RoomTest <MiniTest::Test

  def test_room_exists
    room = Room.new("test", 5, 6)

    assert_instance_of Room, room
  end




end
