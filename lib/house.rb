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
    roomy = []
    @rooms.each do |sym|
      if sym.category == symbol
        roomy << sym
      end
    end
      p roomy
  end

  def area
    total = 0
    @rooms.each do |room|
      add = room.area
      total += add
    end
    p total
  end

  def price_per_square_foot
    cost = @price.tr('$', '0')
    x = cost.to_f / area
    p x.round(2)
  end 



end
