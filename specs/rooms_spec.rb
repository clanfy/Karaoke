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

    @guest_1 = Guest.new("Cookie", "Wannabe", 100)
    @guest_2 = Guest.new("Paul", "The Night They Drove Old Dixie Down", 150)
    @guest_3 = Guest.new("Martin", "The River", 200)
    @guest_4 = Guest.new("Carlson", "Recognize ft. Drake", 100)
    @guest_5 = Guest.new("Pants", "YMCA", 50)

    @guests = [@guest_1, @guest_2, @guest_3, @guest_4, @guest_5]
    @guests_group_2 = [@guest_1, @guest_2, @guest_3]

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
  checked_in = @room_1.check_in([@guest_1])
  assert_equal(["Cookie"], checked_in)
end

def test_can_check_in_multiple_guests
  checked_in_guests = @room_1.check_in(@guests)
  assert_equal(["Cookie", "Paul", "Martin", "Carlson", "Pants"], checked_in_guests)
end

def test_can_check_out_guests
  @room_1.check_in(@guests)
  check_out = @room_1.check_out("Paul")
  assert_equal(["Cookie", "Martin", "Carlson", "Pants"], check_out)
end

def test_can_add_songs_to_room
  song_added = @room_1.add_song(@song_1)
  assert_equal("The River by Bruce Springsteen added.", song_added)
end

def test_add_guests_to_occupied_room
  occupied_room = @room_1.check_in(@guests_group_2)
  room_full = occupied_room + @room_1.check_in([@guest_4])
  assert_equal(["Cookie", "Paul", "Martin", "Carlson"], room_full)
end

end
