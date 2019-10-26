require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')
require_relative('../rooms.rb')
require_relative('../guest.rb')

class TestRooms < Minitest::Test

def setup


  @room1 = Room.new("Red", 3, 1)
  @room2 = Room.new("Black", 2, 1)
  @room3 = Room.new("Purple", 2, 1)


  @song1 = Song.new("Immigrant Song")
  @song2 = Song.new("Yoga")
  @song3 = Song.new("All the Stars")
  @song4 = Song.new("Sunflower")

  @guest1 = Guest.new("Lily")
  @guest2 = Guest.new("Claudia")
  @guest3 = Guest.new("Simon")


end


def test_room_name
  assert_equal("Red", @room1.name)
end

def test_room_number_of_guests
  assert_equal(2, @room2.number_of_guests)
end








end
