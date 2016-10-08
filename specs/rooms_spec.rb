require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../rooms')
require_relative('../songs')
require_relative('../guests')


class TestRoom < MiniTest::Test

  def setup

    @song_1 = Song.new("The River", "Bruce Springsteen")
    @song_2 = Song.new("Wannabe", "The Spice Girls")
    @song_3 = Song.new("The Night They Drove Old Dixie Down","The Band")
    @song_4 = Song.new("YMCA", "Village People")
    @song_5 = Song.new("Recognize ft. Drake", "PARTYNEXTDOOR")

    @songs = [@song_1, @song_2, @song_3, @song_4, @song_5]

    @guest_1 = Guest.new("Cookie", "Wannabe")
    @guest_2 = Guest.new("Paul", "The Night They Drove Old Dixie Down")
    @guest_3 = Guest.new("Martin", "The River")

    @guests = [@guest_1, @guest_2, @guest_3]

    @room_1 = Room.new("Scary", @songs)
    @room_2 = Room.new("Ginger", @songs)
    @room_3 = Room.new("Baby", @songs)
    @room_4 = Room.new("Sporty", @songs)
    @room_5 = Room.new("Posh", @songs)

    @rooms = [@room_1, @room_2, @room_3, @room_4, @room_5]

  end

def test_room_has_name
  assert_equal("Posh", @room_5.name)
end

def test_5_rooms
  assert_equal(5, @rooms.count)
end

def test_can_check_in_1_guest
  checked_in = @room_1.check_in(@guest_1)
  assert_equal(["Cookie"], checked_in)
end




end