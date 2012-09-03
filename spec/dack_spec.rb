require 'spec_helper'

describe Dack do
  context "initialize" do
    it "should initialize new dack with 52 cards" do
      dack = Dack.new
      dack.size.should == 52
    end
  end
end
