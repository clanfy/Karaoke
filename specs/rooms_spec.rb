require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../rooms')
require_relative('../songs')


class TestRoom < MiniTest::Test

  def setup

    @room_1 = Room.new("Scary", @song_list)
    @room_2 = Room.new("Ginger", @song_list)
    @room_3 = Room.new("Baby", @song_list)
    @room_4 = Room.new("Sporty", @song_list)
    @room_5 = Room.new("Posh", @song_list)

    @rooms = [@room_1, @room_2, @room_3, @room_4, @room_5]

  end

def test_room_has_name
  assert_equal("Posh", @room_5.name)
end

def test_5_rooms
  assert_equal(5, @rooms.count)
end



end