require "card_play_21/version"

class Dack
  attr_reader :cards
  
  def initialize
    @cards = Array.new
	# создать карту для каждой масти и для каждого значения. положить в @cards
	Suit.methods.each do |suit_method_name|
	  if not(contains_standart_method?(suit_method_name))
        CardValue.methods.each do |card_value_method_name|
		  if !contains_standart_method? card_value_method_name
	        card = Card.new(CardValue.send(card_value_method_name.to_s), Suit.send(suit_method_name.to_s))
	        @cards << card
		  end
	    end
	  end
	end
	mix_cards
  end
  
  def next_card
    @cards.pop
  end
  
  def empty?
    @cards.empty?
  end
  
  private 
  
  def contains_standart_method? method_name
    EmptyClass.methods.include? method_name
  end
  
  
  private
  
  def mix_cards
  	# TODO mix cards randomly
  end
end
