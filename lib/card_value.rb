require "card_play_21/version"

class CardValue
  attr_reader :value
  
  def initialize value
    @value = value
  end
  
  def self.two 
    CardValue.new 2
  end
  
  def self.three
    CardValue.new 3
  end
  
  def self.four
    CardValue.new 4
  end
  
  def self.five
    CardValue.new 5
  end
  
  def self.six
    CardValue.new 6
  end
  
  def self.seven
    CardValue.new 7
  end
  
  def self.eight
    CardValue.new 8
  end
  
  def self.nine
    CardValue.new 9
  end
  
  def self.ten
    CardValue.new 10
  end
  
  def self.j
    CardValue.new 'j'
  end
  
  def self.q
    CardValue.new 'q'
  end
  
  def self.k
    CardValue.new 'k'
  end
  
  def self.a 
    CardValue.new 'a'
  end
  
  def to_s
    @value.to_s
  end
end
