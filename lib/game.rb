require_relative 'player'



class Game

attr_reader :current_player, :opponent, :gameover, :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
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

  def gameover?
    current_player.hit_points == 0 || opponent.hit_points == 0
  end

  private

  def deduct_hp(player)
    player.hit_points -= 10
  end


end
