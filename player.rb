class Player

  attr_accessor :name, :lives

  def initialize (name)
    @name = name 
    @lives = 3
  end

  def round 
    num1 = rand(1..30)
    num2 = rand(1..30)
    @question = "What does #{num1} times #{num2} equal?"
    @answer = num1 * num2

    random_num = rand(0...5)

    puts "Player #{self.name}: #{@question}"
    input = gets.chomp.to_i

    if input == @answer
      puts "Thats the correct answer"
    else 
      puts "Sorry You lost a life"
      @lives -= 1 
    end
  end

end






# @players = [
#   {
#     id: 1, 
#     lives: 3
#   },
#   {
#     id: 2, 
#     lives: 3
#   }
# ]