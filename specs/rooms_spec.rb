require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../rooms')
require_relative('../songs')
require_relative('../guests')

class TestRoom < MiniTest::Test

  def setup

    @guest_1 = Guest.new("Cookie", "Wannabe")
    @guest_2 = Guest.new("Paul", "The Night They Drove Old Dixie Down")
    @guest_3 = Guest.new("Martin", "The River")

    @song_1 = Song.new("The River", "Bruce Springsteen")
    @song_2 = Song.new("Wannabe", "The Spice Girls")
    @song_3 = Song.new("The Night They Drove Old Dixie Down","The Band")
    @song_4 = Song.new("YMCA", "Village People")
    @song_5 = Song.new("Recognize ft. Drake", "PARTYNEXTDOOR")



  end


end