class Spawner

  def initialize(grid, x, y, interval)
    @grid = grid
    @x, @y = x, y
    @interval = interval
  end

  def cell
    @cell ||= @grid.cell(@x, @y)
  end

  def decide_turn(n)
    if (n % @interval) == 0
      cell.toggle(true)
    end
  end

end
