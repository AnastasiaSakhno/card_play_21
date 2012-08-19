require "card_play_21/version"

class Game
  attr_reader :players, :dack, :turn
  
  def initialize players, dack, turn = 0
    @players = players
	raise ArgumentError.new 'dack can not be empty' if dack.empty?
	@dack = dack
	@turn = turn
  end
  
  def add_player player
    @players << player
  end
  
  def next_card?
    card = dack.next_card
    return false if card.is_nil
    @turn = (@turn + 1) % players.lenght
	true
  end
end
