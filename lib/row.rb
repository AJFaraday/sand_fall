class Row

  attr_reader :cells

  def initialize(width, row_number, grid)
    @width = width
    @grid = grid
    @cells = []
    @width.times do |cell_number|
      @cells << Cell.new(cell_number, row_number, grid)
    end
  end

  def [](x)
    @cells[x]
  end

end
