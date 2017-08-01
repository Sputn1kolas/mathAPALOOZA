class Turn
  def initialize(player, otherPlayer)
    @player = player
    @otherPlayer = otherPlayer
  end
  def start
    puts "\n\nWelcome #{@player.name}, you have #{@player.lives} lives left"
    question = Question.new
    puts question.question
    answer = gets.to_i
    if answer != question.answer
      @player.lose
      puts "You suck! It's #{question.answer}, Lost 1 life! aGghg!"
      return newTurn
    end
    puts "great job #{@player.name}, You have #{@player.lives} lives left!"
    return newTurn
  end
  def newTurn
    if(@player.lives != 0)
      turn = Turn.new(@otherPlayer, @player)
      return turn.start
    else
      return puts "GAME OVER!!!!!!! #{@otherPlayer.name} won! Score: #{@player.name} has #{@player.lives}/3, #{@otherPlayer.name} has #{@otherPlayer.lives}/3"
    end
  end
end