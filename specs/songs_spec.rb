require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class TestSongs < Minitest::Test

  def setup
    @song_1 = Song.new("The River", "Bruce Springsteen")
  end

  def test_song_has_title
    assert_equal("The River", @song_1.title)
  end

end