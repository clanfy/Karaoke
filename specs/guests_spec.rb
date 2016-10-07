require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Cookie", "Wannabe")
    @guest_2 = Guest.new("Paul", "The Night They Drove Old Dixie Down")
  end

  def test_guest_has_name
    assert_equal("Cookie", @guest_1.name)
  end

  def test_guest_has_fave_song
    assert_equal("The Night They Drove Old Dixie Down", @guest_2.fave_song)
  end

end