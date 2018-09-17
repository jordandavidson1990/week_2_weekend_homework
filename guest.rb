class Guest

  attr_reader :name, :favourite_song, :wallet

  def initialize(name, favourite_song, wallet, cheer)
    @name = name
    @favourite_song = favourite_song
    @wallet = wallet
    @cheer = cheer
  end

  def remove_money(entrance_fee)
    @wallet -= entrance_fee
  end

  def cheer
    return @cheer
  end
end
