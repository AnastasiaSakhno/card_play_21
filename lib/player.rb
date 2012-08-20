require "card_play_21/version"

class Player
  attr_reader :name, :dack, :cards, :points
    
  def initialize name, dack, cards = [], score = 0
  	@name = name
    @dack = dack
    @cards = cards
    @score = score
  end
  
  def to_s
    @name
  end
  
  def one_more_card
  	@cards << @dack.next_card
  	@cards.last
  end
  
  def one_more_card?
  	# TODO ask about if player wants one more card
  	true
  end
end
