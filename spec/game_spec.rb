require 'spec_helper'

describe Game do
  before(:each) do
    @dack = Dack.new
    first_player = Player.new 'Nick', @dack
    second_player = ComputerPlayer.new @dack
    @players = [first_player, second_player]
  end

  context "initialize" do
    it "should return new game with valid arguments" do
      game = Game.new(@players, @dack)
    end

    it "should raise an error with an empty dack" do
      while (@dack.next_card != nil);
      end
      expect { Game.new(@players, @dack) }.to raise_error (ArgumentError)
    end
  end

  context "next card" do
    it "should be given next player" do
      game = Game.new(@players, @dack)
      card = game.next_card
      # puts 'card = ' + card.to_s
      # puts 'turn = ' + game.turn.to_s
      expect @players[game.turn-1].cards.last == card
      card = game.next_card
      # puts 'card = ' + card.to_s
      expect @players[game.turn-1].cards.last == card
    end
  end
end
