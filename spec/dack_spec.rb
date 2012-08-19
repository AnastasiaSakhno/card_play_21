require 'spec_helper'

describe Dack do
  context "initialize" do
    it "should return new dack" do
	dack = Dack.new
	dack.cards.length.should == 52
	end
  end
end
