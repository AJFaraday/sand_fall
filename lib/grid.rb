class Grid

  def initialize(width=30, height=35, step_time = 0.05)
    @width, @height = width, height
    @step_time = step_time
    @rows = []
    @height.times do |i|
      @rows << Row.new(@width, i, self)
    end
    @cells = @rows.map(&:cells).flatten
    @spawners = []
    @turn_number = 0
  end

  def add_spawner(x, y, interval)
    @spawners << Spawner.new(self, x, y, interval)
  end

  def draw
    border = "+#{'-' * @width}+\n"
    puts `clear`

    result = border
    @rows.each do |row|
      result += "|#{row.cells.map(&:char).join}|\n"
    end
    result += border
    puts result
  end

  def step
    @cells.each(&:decide_turn)
    @spawners.each{|s|s.decide_turn(@turn_number)}
    @cells.each(&:enact_turn)
    @turn_number += 1
  end

  def play
    loop do
      step
      draw
      sleep @step_time
    end
  end

  def cell(x,y)
    row = @rows[y]
    row ? row[x] : nil
  end

end

