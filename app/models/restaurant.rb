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

  def self.find_by_name(name)
    @@all.select{|restaurant| name == restaurant.name}[0]
  end

  def customer
    Review.all.select{|review| self == review.restaurant}.map{|review| review.customer}.uniq
  end

  def reviews
    Review.all.select{|review| self == review.restaurant}
  end

  def average_star_rating
    n = 0
    all = Review.all.select do|review|
      self == review.restaurant
    end
    n = all.length
    all.each do |review|
      review.rating
      end
      binding.pry
      all.concat/n
  end


end
