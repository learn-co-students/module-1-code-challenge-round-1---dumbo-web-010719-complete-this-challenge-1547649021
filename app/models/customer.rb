class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    @@all.select{|person| name == person.full_name}[0]
  end

  def self.find_all_by_first_name(name)
    @@all.select{|person| name == person.first_name}
  end

  def self.all_names
    @@all.map {|person| person.full_name}
  end

  def self.all
    @@all
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant ,rating, content)
  end

  def num_reviews
    Review.all.select{|review| self == review.customer}.count
  end

  def restaurants
      Review.all.select{|review| self == review.customer}.map{|review| review.restaurant}.uniq
  end

end
