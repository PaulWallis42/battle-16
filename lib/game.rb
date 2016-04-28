require_relative 'player'

class Game

  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    attack_player = @players.select { |player| player != @turn }.first
    attack_player.receive_damage
  end

  def switch_turns
    @turn = opponent_of(turn)
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end
