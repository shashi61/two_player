class Game


    def initialize
      @player1= Players.new("Player 1")
      @player2 = Players.new("Player 2")
      @current_player=@player1
    end 
    
    def start
      puts "Welcome to TwO-O-Player-Math-Game!!!"
    
      while (@player1.is_alive? && @player2.is_alive?) do 
        
        puts "-----------NEW TURN------------ "
      
        #generate a question by computer
        question = Questions.new
        puts "#{@current_player.name}: #{question.display}"
        print '> '
        #user answer
        answer = gets.chomp
      
        #if a player provide a correct answer
    
        if question.check_answer(answer.to_i)
          puts 'YES! You are correct!!!'
        #wrong answer
        else 
          @current_player.lose_life
          puts 'Seriously? No!'
        end
    
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
        @current_player = (@player1 == @current_player) ? @player2 : @player1
      
      end 
    
        #Game over if reaches 3 points
      puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
      puts "-----------GAME OVER-----------"
      puts 'Good bye!'
    
      end 
    
      end