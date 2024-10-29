# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require_relative 'player'
require_relative 'question'
require_relative 'input_output_handler'
require_relative 'game'

game = Game.new
game.start_the_game

