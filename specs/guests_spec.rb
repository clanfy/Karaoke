require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Cookie", "Wannabe", 100)
    @guest_2 = Guest.new("Paul", "The Night They Drove Old Dixie Down", 150)
    @guest_3 = Guest.new("Martin", "The River", 200)
    @guest_4 = Guest.new("Carlson", "Recognize ft. Drake", 100)
    @guest_5 = Guest.new("Pants", "YMCA", 50)
  end

  def test_guest_has_name
    assert_equal("Cookie", @guest_1.name)
  end

  def test_guest_has_fave_song
    assert_equal("The Night They Drove Old Dixie Down", @guest_2.fave_song)
  end

  def test_guest_has_money
    assert_equal(100, @guest_1.money)
  end 

end