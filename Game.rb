require './Player'
require './Question'

class Game
  
  attr_accessor :current_player

  def initialize 
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def play
    
    while (@player1.lives > 0 && @player2.lives > 0) do
      
      question = Question.new
      #puts "----- NEW GAME -----"
      puts "#{@current_player.name}: #{question.show_question}"
      print "> "

      guess = gets.chomp.to_i

      if question.correct_answer?(guess)
        puts "Yes! You are correct."
      else 
        @current_player.lives -= 1
        puts "#{current_player.name}: Seriously? No!"
      end

      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
     
      if (@current_player == @player1)
        @current_player = @player2
      else 
        @current_player = @player1
      end 

      puts "----- NEW TURN -----"

    end

    game_over
    
  end

  def game_over
    if @player1.lives || @player2.lives == 0
      # check which player has won and puts winning statement
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end

  # def make_guess
  # end

  # def new_turn
  # end



end

game = Game.new
# puts game.questions
game.play
# game.make_guess

