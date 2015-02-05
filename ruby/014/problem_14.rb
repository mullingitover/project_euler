# Problem 14
# The following iterative sequence is defined for the set of positive integers:
# 
# n  n/2 (n is even)
# n  3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.

max_length = 0
longest = 0

def seq(i)
  length = 1
  return length if i == 1
  if i % 2 == 0 
     length += seq(i/2)
  end
  if i % 2 != 0
     length += seq(3*i + 1)
  end
    return length
end

(1..999999).each do |i|
  seqlength = seq(i)
  if seqlength > max_length
    max_length = seqlength
    longest = i
  end
end

puts longest.to_s + " has the longest chain at " + max_length.to_s + " chain length."

