class Customer
  
  attr_reader :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select do |x|
      x if x.customer.name == self.name
    end
  end
  
  def waiters
    meals.map do |x| x.waiter
    end
  end
  
end