require "card_play_21/version"

class Dack
  attr_reader :cards

  def initialize
    @cards = Array.new
    # create card for each suit and each value. put into @cards
    Suit.suit_map.each do |suit|
      CardValue.card_values_map.each do |card_value|
        card = Card.new(CardValue.send(card_value.to_s), Suit.send(suit.to_s))
        @cards << card
      end
    end
    mix_cards
  end

  def next_card
    @cards.pop
  end

  def size
    @cards.size
  end

  def empty?
    @cards.empty?
  end

  def blank?
    nil? || empty?
  end


  private

  def mix_cards
    # TODO mix cards randomly
  end
end
