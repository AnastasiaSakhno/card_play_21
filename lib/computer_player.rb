require "card_play_21/version"

class ComputerPlayer < Player
  attr_reader :name
  
  def initialize
    @name = 'Computer'
  end
end
