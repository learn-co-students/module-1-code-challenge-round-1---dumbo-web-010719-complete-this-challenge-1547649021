class Customer
  attr_accessor :first_name, :last_name, :full_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = first_name + " " + last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(customer_full_name)
    self.all.find do |customer|
      customer.full_name == customer_full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.find do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.first_name
    end
  end

  def add_review(restaurant, content, rating) # create new review
    Review.new(restaurant, self, rating, content)
  end

  def num_reviews # return integer of reviews
    Review.all.select do |review|
      review.full_name.full_name == self.full_name
    end.count
  end

  def restaurants # return uniqe array
    Review.all.select do |review|
      review.full_name.full_name == self.full_name
    end.map do |review|
      review.name
    end.uniq
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
