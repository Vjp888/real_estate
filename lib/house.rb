class House

attr_reader :address, :rooms, :price
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(symbol)
    @rooms.map do |sym|
      sym.category.match(symbol)
    end

  end

  def area
    total = 0
    @rooms.each do |room|
      add = room.area
      total += add
    end
    p total
  end



end
