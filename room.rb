class Room

  attr_reader :number, :entrance_fee, :songs_list, :capacity

  def initialize(number, entrance_fee, songs_list, checked_in_guests, capacity)
    @number = number
    @entrance_fee = entrance_fee
    @songs_list = songs_list
    @checked_in_guests = checked_in_guests
    @capacity = capacity
  end

  def number_of_guests
    return @checked_in_guests.length()
  end

  def number_of_songs()
    return @songs_list.length()
  end

  def check_in_guest(guest)
    @checked_in_guests.push(guest)
  end

  def check_out_guest(guest)
    @checked_in_guests.delete(guest)
  end

  def add_songs(song)
    @songs_list.push(song)
    for guest in @checked_in_guests
      if (guest.favourite_song == song)
        return guest.cheer()
      end
    end
  end

  def reached_capacity
    return number_of_guests >= capacity
  end


  def pay_entry_fee(guest)
    if guest.wallet >= @entrance_fee
      guest.remove_money(@entrance_fee)
    end
  end
end
