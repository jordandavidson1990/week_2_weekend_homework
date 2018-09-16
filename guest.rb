class Guest

  attr_reader :name, :favourite_song, :wallet

  def initialize(name, favourite_song, wallet)
    @name = name
    @favourite_song = favourite_song
    @wallet = wallet
  end

  def remove_money(entrance_fee)
    @wallet -= entrance_fee
  end

  # def cheer(room)
  #   # search room's song list
  #   for tune in room.@song_list
  #     # see if favourite song is in that array
  #     if favourite_song == tune
  #       # cheer if favourite song is contained
  #       return "Whoo!"
  #     end
  #   end
  # end
end
