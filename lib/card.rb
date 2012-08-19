require "card_play_21/version"

class Card
  attr_reader :value, :suit
  
  def initialize value, suit
    raise ArgumentError.new 'wrong arguments for card. please check it' unless inputs_right?(value, suit)
    @value = value
	@suit = suit
  end
  
  def to_s
    @value.to_s + @suit.to_s
  end
  
  private 
  
  def inputs_right? value, suit
    value.kind_of?(CardValue) && suit.kind_of?(Suit)
  end
end
