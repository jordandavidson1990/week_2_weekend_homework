require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')

class GuestTest < Minitest::Test

  def setup
    @guest1 = Guest.new("Bruce", "Born to Run", 10)
  end

  def test_get_guest_name
    assert_equal(@guest1.name, "Bruce")
  end

  def test_get_favourite_song
    assert_equal(@guest1.favourite_song, "Born to Run")
  end

  def test_get_how_much_in_wallet
    assert_equal(@guest1.wallet, 10)
  end

  def test_remove_money
    @guest1.remove_money(2)
    assert_equal(@guest1.wallet, 8)
  end

  # def test_cheer_for_fave_song
  #   assert_equal(@guest1.cheer(@room1), "Whoo!")
  # end
end
