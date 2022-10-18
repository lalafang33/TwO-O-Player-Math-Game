class Game 
  attr_accessor = :player_1, :player_2 

  def player 
    @player_1 = player_1 
    @player_2 = player_2 
  end

  # game start if players life > 0 

  def start 
    while @player_1.lives > 0 && @player_2.lives > 0 do 
      @player_1.play
      puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
      if @player_1.lives == 0 
        break 
      end
      puts "----- NEW TURN -----"

      @player2.play
      puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
    
      if @player_2.lives == 0
        break
      end
    
      puts "----- NEW TURN -----"

      end
      
      if @player_1.lives > @player_2.lives
        puts "Player 1 wins with a score of #{@player_1.lives}/3"
      else
        puts "Player 2 wins with a score of #{@player_2.lives}/3"
      end
      
      puts "----- GAME OVER -----"
      puts "Good bye!"

    end
end