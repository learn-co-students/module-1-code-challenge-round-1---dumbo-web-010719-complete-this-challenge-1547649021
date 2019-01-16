class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(restaurant_name)
    self.all.find do |restaurant|
      restaurant.name == restaurant_name
    end
  end

  def customers
    Review.all.select do |review|
      review.name == self
    end.map do |review|
      review.full_name.full_name
    end
  end

  def reviews
    Review.all.select do |review|
      review.name == self
    end
  end

end
