class Guest

  attr_accessor :name, :fave_song

  def initialize(name, fave_song, money)
    @name = name
    @fave_song = fave_song
    @money = money
  end

  def money
    return @money
  end

  def skint_guest
    if guest.money < 20
      return guest.money
    end
  end

end