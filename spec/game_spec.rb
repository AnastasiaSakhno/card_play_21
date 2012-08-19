require 'spec_helper'

describe Game do
  context "initialize" do
    it "should return new game" do
	  first_player = Player.new 'Nick'
	  players = [first_player, ComputerPlayer.new]
	  dack = Dack.new
	  game = Game.new(players, dack)
	end
	
	it " dack should not be empty at the game start" do
	  first_player = Player.new 'Nick'
	  players = [first_player, ComputerPlayer.new]
	  dack = Dack.new
	  while (dack.next_card != nil) ; end
	  expect {Game.new(players, dack)}.to raise_error (ArgumentError)	
	end
  end
end
