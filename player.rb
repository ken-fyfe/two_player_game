# define the attributes and actions of the player
class Player
  attr_accessor :lives_left

  def initialize
    @lives_left = 3
    puts 'initialized player with 3 lives'
  end

  def wrong_guess
    @lives_left -= 1
  end

  def lives_used
    3 - @lives_left
  end

  def dead?
    @lives_left <= 0
  end
end