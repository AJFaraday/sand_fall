# sand_fall

```
+------------------------------+
|          #                   |
|                              |
|                              |
|          #         #         |
|                              |
|                              |
|          #                   |
|                              |
|                    #         |
|          #                   |
|                              |
|                              |
|          #                   |
|                    #         |
|                              |
|          #                   |
|                              |
|                              |
|          #         #         |
|                              |
|                              |
|          #                   |
|                              |
|                    #         |
|          #                   |
|                              |
|           #                  |
|          #                   |
|         ###        #         |
|        #####       #         |
|       #######     ### #      |
|      #########   #####       |
|     ########### #######      |
|    ######################    |
|   ########################   |
+------------------------------+
```

## Getting Started

* Install git and ruby
* `git clone git@github.com:AJFaraday/sand_fall.git`
* `cd sand_fall`
* `ruby script/first.rb`
* Watch the sand fall.

## New sand faller...

* Create a new ruby file in /script
* Fill in with this template

```ruby
require_relative '../lib/environment'

grid = Grid.new(30, 35)

# Your starting conditions here

grid.play
```

* Set some starting conditions

```ruby
# Place a piece of sand at 2 steps along, three steps down
grid.cell(2,3).toggle(true)
# Start pouring in sand at 10 steps along, no steps down
grid.add_spawner(10, 0, 4)
# The 4 means there'll be a new piece of sand every 4 steps
```
