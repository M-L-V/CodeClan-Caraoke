require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')
require_relative('../rooms.rb')
require_relative('../guest.rb')

class TestSong < Minitest::Test


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


def test_song_name
  assert_equal("Yoga", @song2.name)
end










end
