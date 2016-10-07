require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../songs')

class TestSongs < Minitest::Test

  def setup
    @song_1 = Song.new("The River", "Bruce Springsteen")
    @song_2 = Song.new("Wannabe", "The Spice Girls")
    @song_3 = Song.new("The Night They Drove Old Dixie Down","The Band")
    @song_4 = Song.new("YMCA", "Village People")
    @song_5 = Song.new("Recognize ft. Drake", "PARTYNEXTDOOR")

    @song_list = [@song_1, @song_2, @song_3, @song_4, @song_5]
  end

  def test_song_has_title
    assert_equal("The River", @song_1.title)
  end

  def test_song_has_artist
    assert_equal("The Spice Girls", @song_2.artist)
  end


end