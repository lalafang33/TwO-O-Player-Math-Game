class Player

  attr_accessor :name, :lives

  def initialize (name)
    @name = name 
    @lives = 3
  end

  def round 
    @questions = { 
      'What is 3 * 10 equal?' => '30',
      'What is 5 + 2 - 4 / 1 equal?' => '2',
      'what is 100 / 2 + 5 equal?' => '55',
      'what is 10 / 5 equal?' => '2',
      'what is the square root of 4?' => '2',
      'what is 8 time 8 time 8 time 2 equal?' => '1024'

    } 

    random_num = rand(0...5)

    puts "Player ${self.name}: #{@questions.keys[random_num]}"
    input = gets.chomp 

    if input == @questions.keys[random_num]
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