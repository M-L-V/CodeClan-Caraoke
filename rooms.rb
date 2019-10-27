class Room

attr_reader :name, :number_of_guests, :list_of_songs

  def initialize(name, number_of_guests, list_of_songs)

    @name = name
    @number_of_guests = number_of_guests
    @list_of_songs = list_of_songs

  end


  def number_of_guests
    return @number_of_guests.size
  end

  def number_of_songs
    return @list_of_songs.size
  end

  def remove_song_from_room
    return @list_of_songs.pop
  end

  def add_song_to_room(song)
    @list_of_songs.push song
  end


  def add_guest_to_room(guest)
    @number_of_guests.push guest
  end

  # 
  # def remove_guest_from_room_by_name(room, guest)
  #     for guest in @rooms.@number_of_guests
  #       if guest[:name] == name
  #         guest.delete
  #       end
  #     end
  # end






end
