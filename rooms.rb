class Room

  attr_reader :name, :songs, :guests

  def initialize(name, songs)
    @name = name
    @songs = songs
    @guests_room = []
  end
  
  def check_in(new_guests)
    guest_array = new_guests.map {|guest| guest.name}
    return guest_array.each { |guest_name| @guests_room << guest_name}
  end

  def check_out(guest)
    @guests_room.delete(guest)
    return @guests_room
  end

end