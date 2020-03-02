# this class defines and controls the game play
class Game
  def initialize
    puts 'init game'
  end

  def random_number
    rand(19) + 1
  end

  def question
    @rand1 = random_number
    @rand2 = random_number
    @answer = @rand1 + @rand2
    print 'What is ' + @rand1.to_s + ' + ' + @rand2.to_s + '? '
  end

  def correct_answer
    @rand1 + @rand2
  end

  def prompt_player_input
    print "> "
    gets.chomp.to_i
  end

  def current_player(player)
    (player == 0) ? 'Player 1' : 'Player 2'
  end

  def current_score(p1_lives, p2_lives)
    puts 'P1: ' + p1_lives.to_s + '/3 vs P2: ' + p2_lives.to_s + '/3'
  end
end
