require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class SongTest < Minitest::Test

  def setup
    @song = Song.new("Born to Run")
  end

  def test_get_song
    assert_equal(@song.title, "Born to Run")
  end

end
