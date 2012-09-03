require "card_play_21/version"

class Game
  attr_reader :players, :dack, :turn
  
  def initialize players, dack = Dack.new, turn = 0
    @players = players
	raise ArgumentError.new 'dack can not be empty' if dack.blank?
	@dack = dack
	@turn = turn
  end
  
  def add_player player
    @players << player
  end
  
  def next_card
  	player = @players[@turn]
  	if player.one_more_card?
      card = @players[@turn].one_more_card
      @turn = (@turn + 1) % @players.length if card != nil
      card
    else
      nil
    end
  end
end
