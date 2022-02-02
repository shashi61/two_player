class Questions

    attr_reader :display
  
    
    def initialize()
      number1 = rand(0..20)
      number2 = rand(0..20)
      @display = "What does #{number1} + #{number2} equal?"
      @answer = number1 + number2
    end
  
    def check_answer(answer)
      @answer == answer
    end
  end