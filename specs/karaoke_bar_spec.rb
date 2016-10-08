require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../karaoke_bar')
require_relative('../rooms')
require_relative('../songs')


def setup

@guest_1 = Guest.new("Cookie", "Wannabe")
@guest_2 = Guest.new("Paul", "The Night They Drove Old Dixie Down")
@guest_3 = Guest.new("Martin", "The River")

@guests = [@guest_1, @guest_2, @guest_3]


@song_1 = Song.new("The River", "Bruce Springsteen")
@song_2 = Song.new("Wannabe", "The Spice Girls")
@song_3 = Song.new("The Night They Drove Old Dixie Down","The Band")
@song_4 = Song.new("YMCA", "Village People")
@song_5 = Song.new("Recognize ft. Drake", "PARTYNEXTDOOR")

@song_list = [@song_1, @song_2, @song_3, @song_4, @song_5]

@room_1 = Room.new("Scary", song_list)
@room_2 = Room.new("Ginger", song_list)
@room_3 = Room.new("Baby", song_list)
@room_4 = Room.new("Sporty", song_list)
@room_5 = Room.new("Posh", song_list)

rooms = [@room_1, @room_2, @room_3, @room_4, @room_5]

@karaoke_bar = KaraokeBar.new(rooms)

end 