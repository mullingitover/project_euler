# Problem 6
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

first_hundred = (1..100).to_a
first_hundred_sum = (1..100).inject(:+)
first_hundred_sum_squared = first_hundred_sum**2
first_hundred_squared = []

(0..99).each do |i|
  first_hundred_squared[i] = first_hundred[i] * first_hundred[i]
end

first_hundred_squared_sum = first_hundred_squared.inject(:+)

difference = first_hundred_sum_squared - first_hundred_squared_sum 
puts difference
