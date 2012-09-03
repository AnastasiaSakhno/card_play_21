require "card_play_21/version"

class Suit
  attr_reader :suit, :short_suit

  @@suit_map = {
      'spades' => 'S',
      'hearts' => 'H',
      'diamonds' => 'D',
      'clubs' => 'C'
  }

  def self.method_missing m
    suit = m.to_s.downcase
    Suit.new suit, @@suit_map[suit]
  end

  def to_s
    @short_suit
  end

  def self.suit_map
    @@suit_map
  end


  private

  def initialize suit, short_suit
    @suit = suit
    @short_suit = short_suit
  end
end
