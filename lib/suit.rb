require "card_play_21/version"

class Suit
  attr_reader :suit, :short_suit
  
  def self.spade # ����
    Suit.new 'spade', 'S'
  end  
  
  def self.heart # �����
    Suit.new 'heart', 'H'
  end
  
  def self.rect # �����
    Suit.new 'rect', 'R'
  end
  
  def self.cross # ������
    Suit.new 'cross', 'C'
  end
  
  def to_s
    @short_suit
  end
  
  
  private
  
  def initialize suit, short_suit
    @suit = suit
    @short_suit = short_suit
  end
end
