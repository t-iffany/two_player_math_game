class Game
  
  def initialize 
    @question = questions.sample
    @players = []
  end

  def questions
    [
      ["What does 5 plus 3 equal?", 5+3],
      ["What does 2 plus 6 equal?", 2+6]
    ]
  end

  def make_guess

    # if @lives == 0
    #   puts "----- GAME OVER -----"
    #   puts "Good bye!" 
    # end    

    if @lives > 0
      guess = gets.chomp

      # correct_guess = questions[0].last.to_s.include?(guess)

      # if correct_guess 
      #   puts "Correct"
      # end
       
      if guess.include?(questions[0].last.to_s)
        puts "Correct"
      else
        @lives -= 1
        puts "Seriously? No!"
        puts "Player 1: #{@lives}/3"
      end
    end
  end

  def begin
    #puts "----- NEW GAME -----"
    puts "Player 1: #{questions[0].first}"

    make_guess
    
  end

end

game = Game.new
# puts game.questions
game.begin
# game.make_guess

