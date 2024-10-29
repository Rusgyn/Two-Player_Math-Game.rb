#PLAN
# class Game
# Role: Manages the game including player turns, asking questions, turns
# State/Attributes:
#   - players - Holding the instance of class Players. It's an array.
#   - current_player - This tracks who's turn to play
# Behavior/Method:
#   - def start - This initialize the game.
#   - def switch_turn - Each turn the current_player change
#   - def display_score - this displays the current score of each players and lives
#   - def winner - Announces the winner.
# This class will handle all player's I/O
# This class is responsible for managing the current_player

class Game
  def initialize
    @player1 = Player.new(IOHandler.get_input("Enter Player 1's name: "))
    @player2 = Player.new(IOHandler.get_input("Enter Player 2's name: "))
    @current_player  = @player1
  end

  def start_the_game
    IOHandler.display_message("Welcome to the Two-Player Math Game! \n Let the game begins!")
    
    while @player1.is_alive? && @player2.is_alive?
      question = Question.new # create a new Question instance

      IOHandler.display_message("#{@current_player.name}: #{question.create_question}")
      player_answer = IOHandler.get_input("#{@current_player.name}'s answer:")
      puts "PLAYER ANSWER #{player_answer}"
      until question.validate_answer?(player_answer)
        IOHandler.display_message("Invalid input. Please enter a valid number.")
        player_answer = IOHandler.get_input("#{@current_player.name}'s answer:")
      end

      # if question.validate_answer(player_answer)
      #   if question.check_answer(player_answer)
      #     IOHandler.display_message("YES! You are correct.")
      #   else
      #     IOHandler.display_message("NO! Your answer is incorrect!")
      #     @current_player.lose_life
      #   end
      # else
        
      # end



      if question.check_answer(player_answer)
        IOHandler.display_message("YES! You are correct.")
      else
        IOHandler.display_message("NO! Your answer is incorrect!")
        @current_player.lose_life
      end

      IOHandler.display_lives(@player1, @player2)

      switch_turn
    end

    end_game
  end

  private

  def switch_turn
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def end_game
    victory = @player1.is_alive? ? @player1 : @player2
    IOHandler.winner(victory)
  end
end