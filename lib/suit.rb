require "card_play_21/version"

class Suit
  attr_reader :suit
  
  def initialize suit
    @suit = suit
  end
  
  def self.spade # пика
    Suit.new 'spade'
  end  
  
  def self.heart # чирва
    Suit.new 'heart'
  end
  
  def self.rect # бубна
    Suit.new 'rect'
  end
  
  def self.cross # крести
    Suit.new 'cross'
  end
  
  def to_s
    @suit
  end
end
