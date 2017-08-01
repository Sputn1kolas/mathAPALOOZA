module Game
  class Game
    attr_accessor :players
    def initialize
      @player1 = Player.new("player1")
      @player2 = Player.new("player2")
      @players = [@player1, @player2]
    end

    def start
      puts "WELCOME TO HECK! \n*************************************
      HAHAHAHAHAHAHAHAHAH"
      turn = Turn.new(@player1, @player2)
      turn.start
    end
  end
end