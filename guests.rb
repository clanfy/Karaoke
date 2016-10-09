class Guest

  attr_reader :name, :fave_song

  def initialize(name, fave_song, money)
    @name = name
    @fave_song = fave_song
    @money = money
  end

  def money
    return @money
  end

end