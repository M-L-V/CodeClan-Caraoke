require('minitest/autorun')
require('minitest/rg')

require_relative('../song.rb')
require_relative('../rooms.rb')
require_relative('../guest.rb')

class TestGuest < Minitest::Test


  def setup

    @song1 = Song.new("Immigrant Song")
    @song2 = Song.new("Yoga")
    @song3 = Song.new("All the Stars")
    @song4 = Song.new("Sunflower")

    @guest1 = Guest.new("Lily")
    @guest2 = Guest.new("Claudia")
    @guest3 = Guest.new("Simon")

    @room1 = Room.new("Red", [], [])
    @room2 = Room.new("Black", [@guest1, @guest2, @guest3], [@song1, @song3])
    @room3 = Room.new("Purple", [], [@song2, @song4])


  end

def test_guest_name
  assert_equal("Claudia", @guest2.name)
end










end
