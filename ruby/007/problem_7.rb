# Problem 7

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

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
