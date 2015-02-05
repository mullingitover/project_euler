# Problem 10

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def is_prime(n)
    if n < 2
      return false
    elsif n < 4
      return true
    elsif n % 2 == 0
      return false
    elsif n < 9
      return true
    elsif n % 3 == 0
      return false
    else
      r = (n**0.5).floor
      f = 5
      f.step r,6 do |g|
        if n % g == 0
          return false
        end
        if n % (g + 2) == 0
          return false
        end
      end
      return true
    end
  end

total = 0

2.upto(2000000) { |a|
  if is_prime(a)
    total += a
  end
}

puts total