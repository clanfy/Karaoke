require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../karaoke_bar')
require_relative('../rooms')
require_relative('../songs')

class TestKaraokeBar < MiniTest::Test

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
    @guest_5 = Guest.new("Pants", "YMCA", 15)

    @guests = [@guest_1, @guest_2, @guest_3, @guest_4, @guest_5]
    @guests_group_2 = [@guest_1, @guest_2, @guest_3]

    @room_1 = Room.new("Scary", @songs)
    @room_2 = Room.new("Ginger", @songs)
    @room_3 = Room.new("Baby", @songs)
    @room_4 = Room.new("Sporty", @songs)
    @room_5 = Room.new("Posh", @songs)

    @rooms = [@room_1, @room_2, @room_3, @room_4, @room_5]

    @karaoke_bar = KaraokeBar.new(@rooms)

  end 

  def test_karaoke_bar_has_5_rooms
    assert_equal(5, @karaoke_bar.rooms.count)
  end

end