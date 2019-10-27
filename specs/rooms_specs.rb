require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')
require_relative('../rooms.rb')
require_relative('../guest.rb')

class TestRooms < Minitest::Test

def setup

  @song1 = Song.new("Immigrant Song")
  @song2 = Song.new("Yoga")
  @song3 = Song.new("All the Stars")
  @song4 = Song.new("Sunflower")


  @guest1 = Guest.new("Lily")
  @guest2 = Guest.new("Claudia")
  @guest3 = Guest.new("Simon")

  @room1 = Room.new("Red", [], [])
  @room2 = Room.new("Black", [@guest1, @guest2, @guest3], [@song1, @song3]) #remove songs so there is one per room
  @room3 = Room.new("Purple", [], [@song2, @song4])



end


def test_room_name
  assert_equal("Red", @room1.name)
end

def test_room_number_of_guests
  assert_equal(3, @room2.number_of_guests)
end

def test_room_number_of_songs
  assert_equal(2, @room3.number_of_songs)
end

def test_remove_song_from_room
  @room3.remove_song_from_room
  assert_equal(1, @room3.number_of_songs)
end

def test_add_song_to_room
  song = "Uptown Funk"
  @room2.add_song_to_room(song)
  assert_equal(3, @room2.number_of_songs)   ######
end


def test_add_guest_to_room
  guest = "Molly"
  @room2.add_guest_to_room(guest)
  assert_equal(4, @room2.number_of_guests)
end





#
# def test_remove_guest_from_room(guest)
#guest = "Molly"
#   @room2.remove_guest_from_room
#   assert_equal(3, @room2.number_of_guests)
# end





end
