class Review

  attr_accessor :name, :full_name, :rating, :content
  attr_reader :author

  @@all = []

  def initialize(restaurant_name, customer_full_name, rating=0, content )
    @name = restaurant_name  # Object

    @full_name = customer_full_name  # Object
    @rating = rating #integer
    @content = content #string
    @@all << self
  end

  def self.all
    @@all
  end

  def customer(author)
    self.all.select do |review|
      review.full_name
    end

  end

end
