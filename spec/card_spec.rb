require 'spec_helper'

describe Card do
  context "initialize" do
    it "should not raise with valid arguments" do
      expect { Card.new(CardValue.two, Suit.spade) }.not_to raise_error(ArgumentError)
    end
  end
end
