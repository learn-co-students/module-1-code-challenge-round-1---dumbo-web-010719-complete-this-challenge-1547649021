require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

nate = Customer.new("Nate","Hunter")
lisa = Customer.new("Lisa","Awaya")
jj = Customer.new("JJ","Hunter")

cancun = Restaurant.new("Cancun")
arroyos = Restaurant.new("Arroyos")
nanas = Restaurant.new("Nanas")

good1 = Review.new(cancun, nate, 4, "Good food, nice environment, friendly staff")
good2 = Review.new(cancun, lisa, 3, "Left satisfied")
ok2 = Review.new(arroyos, jj, 2, "Food took long to prepare")
best = Review.new(nanas, jj, 5, "Best enchiladas")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
