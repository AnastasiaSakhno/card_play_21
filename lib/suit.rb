require "card_play_21/version"

class Suit
  attr_reader :suit
  
  def initialize suit
    @suit = suit
  end
  
  def self.spade # ����
    Suit.new 'spade'
  end  
  
  def self.heart # �����
    Suit.new 'heart'
  end
  
  def self.rect # �����
    Suit.new 'rect'
  end
  
  def self.cross # ������
    Suit.new 'cross'
  end
  
  def to_s
    @suit
  end
end
