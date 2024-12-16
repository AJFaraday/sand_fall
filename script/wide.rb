require_relative '../lib/environment'

grid = Grid.new(100, 30)


#grid.add_spawner(10, 0, 20)
#grid.add_spawner(20, 0, 40)

9.times do |i|
  n = i + 1
  grid.add_spawner((n * 10), n+1, 5 * n)
end

grid.play
