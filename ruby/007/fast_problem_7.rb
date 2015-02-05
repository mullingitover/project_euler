# Problem 7

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


#def is_prime(n)
#  ("1" * n) !~ /^1?$|^(11+?)\1+$/
#end

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

counter = 0
i = 1

while(true) do 
  if is_prime(i) 
    counter += 1
    if counter == 10001
      puts "The 10001st prime is " + i.to_s
      break
    end
    puts "Prime number " + counter.to_s + " is " + i.to_s
  end
  i += 1
end


