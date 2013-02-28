# Problem 7

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


def is_prime(n)
  ("1" * n) !~ /^1?$|^(11+?)\1+$/
end

counter = 2
i = 3

while(true) do 
  if is_prime(i) 
    counter += 1
    if counter == 10001
      puts "The 10001st prime is " + i.to_s
      break
    end
    if counter % 10 == 0
      puts "Prime number " + counter.to_s + " is " + i.to_s
    end
  end
  i += 2
end
