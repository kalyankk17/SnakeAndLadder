# Snake and ladder
# Number of snakes (s) followed by s lines each containing 2 numbers denoting the head and tail positions of the snake.
# Number of ladders (l) followed by l lines each containing 2 numbers denoting the start and end positions of the ladder.
# Number of players (p) followed by p lines each containing a name.


# real world objects
# Board
# Player
# Ladder
# Snake
# Dice 

require_relative "game/game"



game = Game.new
game.init
game.start