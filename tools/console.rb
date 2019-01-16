require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

sam = Customer.new("sam", "harris")
sam2 = Customer.new("sam", "smith")
john = Customer.new("John", "Oncher")
chipotle = Restaurant.new("Chipotle")
chipotle2 = Restaurant.new("Chipotle")
moes = Restaurant.new("Moe's")

review1 = Review.new(sam2, moes, 5, "Good chips. Great people.")
review2 = Review.new(sam2, moes, 1, "How about welcome to trash.")
review3 = Review.new(john, chipotle, 4, "Good water.")
review4 = Review.new(john, chipotle, 5, "water.")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
