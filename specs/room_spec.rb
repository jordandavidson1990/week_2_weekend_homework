require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < Minitest::Test

  def setup
    @guest1 = Guest.new("Bruce", "The River", 10, "Rockin!")
    @guest2 = Guest.new("Lana", "Video Games", 8, "Meh")


    @room1_checked_in_guests = [@guest1, @guest2]
    song1 = Song.new("Dancing in the Dark")
    song2 = Song.new("The River")
    song3 = Song.new('The Rising')


    @room1_songs_list = [song1, song2, song3]
    @room1 = Room.new("237", 4, @room1_songs_list, @room1_checked_in_guests, 3)

    @guest3 = Guest.new("Bob", "Mr Tambourine Man", 6, "Woooo!")
    @guest4 = Guest.new("David", "Starman", 7, 'Oh yeah!')
    @song4 = Song.new('Blowin in the Wind')


  end

  def test_get_room_number
    assert_equal(@room1.number, "237")
  end

  def test_get_entrance_fee
    assert_equal(@room1.entrance_fee, 4)
  end

  def test_get_songs_list
    assert_equal(@room1.songs_list, @room1_songs_list)
  end

  def test_check_capacity
    assert_equal(@room1.capacity, 3)
  end

  def test_get_number_of_guests
    assert_equal(@room1.number_of_guests, 2)
  end

  def test_get_number_of_songs_in_room
    result = @room1.number_of_songs()
    assert_equal(result, 3)
  end

  def test_check_in_guests
    @room1.check_in_guest(@guest3)
    assert_equal(3, @room1.number_of_guests)
  end

  def test_check_out_guest
    @room1.check_out_guest(@guest1)
    assert_equal(1, @room1.number_of_guests)
  end

  def test_add_songs_to_room
    @room1.add_songs(@song4)
    assert_equal(@room1.number_of_songs, 4)
  end

  def test_reached_capacity
    @room1.check_in_guest(@guest3)
    @room1.check_in_guest(@guest4)
    assert_equal(@room1.reached_capacity, true)
  end

  def test_pay_entry_fee
    @room1.pay_entry_fee(@guest1)
    assert_equal(6, @guest1.wallet)
  end
end
