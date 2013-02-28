
max_pal = 0
i = 100
k = 100

while i < 1000
  while k < 1000
    if (i*k).to_s.reverse == (i*k).to_s
      puts (i*k).to_s + " is a palindrome"
      if(i * k) > max_pal 
        max_pal = i * k
      end
    end
    k += 1
    #puts "k: " + k.to_s
  end
  k = 100
  i += 1
  #puts "i: " + i.to_s
end
puts max_pal