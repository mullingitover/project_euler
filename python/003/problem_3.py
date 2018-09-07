''' 
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
'''
import math

class PrimeFactorFinder:
    def primefactors(self,n):

        # Get rid of the twos
        while n % 2 == 0:
            print 2,
            n = n / 2
        
        # Now that n is odd and we've factored out twos, we can skip them
        for i in range(3,int(math.sqrt(n))+1,2):
            while n % i == 0:
                print i,
                n = n / i

        if n > 2: 
            print n 

print(PrimeFactorFinder().primefactors(600851475143))