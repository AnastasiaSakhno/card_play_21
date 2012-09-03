require "card_play_21/version"

class CardValue
  attr_reader :value
  @@card_values_map = {
      'two' => 2,
      'three' => 3,
      'four' => 4,
      'five' => 5,
      'six' => 6,
      'seven' => 7,
      'eight' => 8,
      'nine' => 9,
      'ten' => 10,
      'jack' => 'J',
      'queen' => 'Q',
      'king' => 'K',
      'ace' => 'A'
  }

  def self.method_missing m
    CardValue.new card_values_map[m.to_s.downcase]
  end

  def to_s
    card_values_map[@value]
  end

  def self.card_values_map
    @@card_values_map
  end

  private

  def initialize value
    @value = value
  end
end
