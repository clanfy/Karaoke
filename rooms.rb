class Room

  attr_reader :name, :songs, :guests

  def initialize(name, songs)
    @name = name
    @songs = songs
    @guests = []
  end

def check_in(guest)
  return @guests << guest.name
end

end