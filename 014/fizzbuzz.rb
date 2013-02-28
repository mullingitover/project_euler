(1..100).each do |i|
	if i % 15 == 0
	    puts "fizzbuzz"
    elsif i % 5 == 0
      puts "buzz"
    elsif i % 3 == 0
      puts "fizz"
    else
      puts i.to_s      
    end
  end
  
  
  
def fizzbuzz(n)
  if n == 0 
    return nil
  elsif n % 15 == 0
    fizzbuzz(n - 1)
    puts "fizzbuzz"
  elsif n % 5 == 0
    fizzbuzz(n - 1)
    puts "buzz"
  elsif n % 3 == 0
    fizzbuzz(n - 1)
    puts "fizz"
  else 
    fizzbuzz(n - 1)
    puts n
  end
end