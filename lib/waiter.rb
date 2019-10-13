class Waiter

  attr_reader :name, :years
  
  @@all = []
  
  def initialize(name, years)
    @name = name
    @years = years
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end