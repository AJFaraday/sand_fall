class Cell

  def initialize(x, y, grid)
    @x, @y = x, y
    @grid = grid
    @state = false
  end

  def inspect
    "Cell #{@x}, #{@y}: #{@state}"
  end

  def on?
    @state
  end

  def off?
    !on?
  end

  def toggle(state=nil)
    if state.nil?
      @mark = !@state
    else
      @mark = state ? true : false
    end
  end

  def decide_turn
    return if off?
    if neighbour(:d) && neighbour(:d).off?
      toggle(false)
      neighbour(:d).toggle(true)
    elsif can_go_right?
      toggle(false)
      neighbour(:r).toggle(true)
    elsif can_go_left?
      toggle(false)
      neighbour(:l).toggle(true)
    end
  end

  def can_go_right?
    neighbour(:r, :d) &&
      neighbour(:r, :d).off? &&
      neighbour(:r) &&
      neighbour(:r).off?
  end

  def can_go_left?
    neighbour(:l, :d) &&
      neighbour(:l, :d).off? &&
      neighbour(:l) &&
      neighbour(:l).off?
  end

  def enact_turn
    @state = @mark
  end

  def char
    @state ? '#' : ' '
  end

  def neighbour(*direction)
    x, y = @x, @y
    x += 1 if direction.include?(:r)
    x -= 1 if direction.include?(:l)
    y += 1 if direction.include?(:d)
    y -= 1 if direction.include?(:u)
    @grid.cell(x, y)
  end

end
