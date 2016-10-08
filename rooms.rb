class Room

  attr_reader :name, :songs

  def initialize(name, songs)
    @name = name
    @songs = songs
    @guests = []
  end

end