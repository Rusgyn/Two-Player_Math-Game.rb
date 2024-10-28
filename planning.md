
Task 1: Extract Nouns for Classes

Instruction
Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

Player - 2 players. This represents each player in the game.
Game - This manages the entire flow of the game, like a referee of the game.
Question - This generates random question and evaluate each answers.




Task 2: Write their roles

Instruction
- Write out a brief paragraph describing the role that class will play in your app.
Remember that objects are important for two things:
State: Storing data describing themselves (variables)
Behavior: Defining actions that can be performed on them (methods)

1. class Player
Role: - this class manages the player's name, score, lives
state:
  - name - player's name
  - score - Tracks current player's score
  - lives - Tracks how many lives the player has. Each player lives starts at 3.
Behavior/Methods:
  - def lose_life - reduces player's life by 1 if the answer is incorrect
  - def is_alive - This checks if player is still alive

2. class Game
Role: Manages the game including player turns, asking questions, turns
State/Attributes:
  - players - Holding the instance of class Players. It's an array.
  - current_player - This tracks who's turn to play
Behavior/Method:
  - def start - This initialize the game.
  - def switch_turn - Each turn the current_player change
  - def display_score - this displays the current score of each players and lives
  - def winner - Announces the winner.
This class will handle all player's I/O
This class is responsible for managing the current_player

3. class Question
Role: Generate and validate the math questions for each player's turn.
State/Attributes:
  - num1 and num2 - two random numbers between 1 and 20 for the question
  - answer - The correct answer to the question
Behavior/Method:
  - def create_question - Generates the question with two random numbers
  - def check_answer - Compares player's input (answer) to the correct answer and returns if its correct or not.
This class will simply generate and validate questions

