# Problem 2
#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

array = [1,1]
counter = 0

until(array[array.length - 1] + array[array.length - 2] > 4000000) do
  getnext = array[array.length - 1] + array[array.length - 2]
  array << getnext
end

evens = array.delete_if{|val| val % 2 != 0}

puts evens.inject(:+)

