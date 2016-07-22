require_relative 'player'



class Game

attr_reader :current_player, :opponent, :gameover

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
    @gameover = false
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    deduct_hp(player)

  end

  def switch_turn
    @current_player = opponent
  end

  def opponent
    (@players - [@current_player])[0]
  end

  def gameover
    @gameover = true if current_player.hit_points == 0 || opponent.hit_points == 0
  end

  private

  def deduct_hp(player)
    player.hit_points -= 50
  end


end
