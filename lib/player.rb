require "card_play_21/version"

class Player
  attr_reader :name
  
  def initialize name
    @name = name
  end
  
  def to_s
    @name
  end
end