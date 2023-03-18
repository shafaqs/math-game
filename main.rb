require_relative 'game'
require_relative 'player'
require_relative 'question'
require_relative 'turn'
require_relative 'ui'

# create the game objects
ui = UI.new
game = Game.new(ui)

# start the game loop
game.start_game
