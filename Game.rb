require './Player'
require './Question'

class Game
  
  attr_accessor :current_player

  def initialize 
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = nil
  end

  def play


    @current_player = @player1

    question = Question.new
    #puts "----- NEW GAME -----"
    puts "#{@current_player.name}: #{question.show_question}"

    guess = gets.chomp.to_i

    if question.correct_answer?(guess)
      puts "Correct!"
    else 
      @current_player.lives -= 1
      puts "Seriously? No!"
      puts "#{current_player.name}: #{current_player.lives}/3"
    end

    # while (@lives > 0)
    #   if current_player is this one, set to the other
    #     puts new turn
    #     set new question and display it
    
  end

  def make_guess
  end

  def new_turn
  end

  def game_over
  end

end

game = Game.new
# puts game.questions
game.play
# game.make_guess

