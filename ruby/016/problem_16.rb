# Problem 16

# What is the sum of the digits of the number 2^1000?

puts (2**1000).to_s.split('').inject(0){|sum,item| sum + item.to_i }

