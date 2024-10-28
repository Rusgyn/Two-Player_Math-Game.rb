#PLAN
# class Player
# 
# Role: - this class manages the player's name, score, lives
# State:
#   - name - player's name
#   - score - Tracks current player's score
#   - lives - Tracks how many lives the player has.Each player lives starts at 3
# Behavior/Methods:
#   - def lose_life - reduces player's life by 1 if the answer is incorrect
#   - def is_alive - This checks if player is still alive

class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end
end