# IO handler
# Isolate your I/O logic. Don't allow all your classes to interact (gets/puts) with the User

class IOHandler
  #Input
  def self.get_input(require)
    print "#{require}"
    gets.chomp

  end

  def self.display_message(message)
    puts "#{message}"
  end

  #Output
  def self.display_lives(player1, player2)
    puts "#{player1.name}: #{player1.lives}/3  vs  #{player2.name}: #{player2.lives}/3"
  end

  def self.winner(conqueror)
    puts "#{conqueror.name} wins with a score of #{conqueror.lives}/3!"
    puts "Game Over, Good bye!"
  end
end

