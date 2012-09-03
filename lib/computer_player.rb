require "card_play_21/version"

class ComputerPlayer < Player

  def initialize dack, cards = [], score = 0
    super 'Computer', dack, cards, score
  end

  def one_more_card?
    # TODO if points less than 16 false else true
    true
  end
end
