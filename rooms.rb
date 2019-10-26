class Room

attr_reader :name, :number_of_guests, :list_of_songs

  def initialize(name, number_of_guests, list_of_songs)

    @name = name
    @number_of_guests = number_of_guests
    @list_of_songs = list_of_songs

  end

end
