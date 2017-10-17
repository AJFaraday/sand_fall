require_relative '../lib/environment'

grid = Grid.new

grid.add_spawner(10, 0, 2)
grid.add_spawner(20, 0, 4)

grid.play
