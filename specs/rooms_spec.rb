require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../rooms')
require_relative('../songs')
# require_relative('../guests')

class TestRoom < MiniTest::Test

  def setup

    @room_1 = Room.new("Scary", song_list)
    @room_2 = Room.new("Ginger", song_list)
    @room_3 = Room.new("Baby", song_list)
    @room_4 = Room.new("Sporty", song_list)
    @room_5 = Room.new("Posh", song_list)

  end

def test_room_has_name

end


end