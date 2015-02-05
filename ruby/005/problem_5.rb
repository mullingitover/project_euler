# Problem 5

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

candidate = 380

success = false

while(success == false) do
  success = true
  candidate += 380
  (2..20).each do |i|
    if candidate % i != 0
      success = false
    end
  end
  puts candidate.to_s + " is not it."
end

puts candidate.to_s + " is divisible by 1-20."