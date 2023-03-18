require_relative 'game'
require_relative 'player'
require_relative 'question'
require_relative 'turn'
require_relative 'ui.rb'

# code to start the game
ui = UI.new
question = "What does 5 plus 3 equal?"
answer = ui.prompt_player(1, question)
ui.display_scoreboard()