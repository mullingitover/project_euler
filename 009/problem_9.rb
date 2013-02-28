# Problem 9

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
result = 0

1.upto(999) { |a|
  a.upto(999) { |b|
    b.upto(999) { |c|      
      if a**2 + b**2 == c**2 && a + b + c == 1000
        result = a * b * c
      end
      }
    }
  }

puts result