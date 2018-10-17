class Room
attr_reader :category
  def initialize(category, size_x, size_y)
    @category = category
    @size_x = size_x
    @size_y = size_y
  end

  def area
    @size_x * @size_y
  end



end
