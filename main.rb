# this file controls the running of the game
require './player'
require './game_play'

NUMBER_OF_TRIES = 3

players = [Player.new, Player.new]
new_game = Game.new

NUMBER_OF_TRIES.times {
  winner_found = false
  2.times { |i|
    player = new_game.current_player(i)
    puts new_game.question
    answer = new_game.prompt_player_input
    if answer == new_game.correct_answer
      puts player + ' wins with a score of ' + players[i].lives_used.to_s + '/3 lives used'
      winner_found = true
      break
    else
      players[i].wrong_guess
      puts 'You messed up bigtime!'
    end
    new_game.current_score(players[0].lives_used, players[1].lives_used)
  }
  break if winner_found
}