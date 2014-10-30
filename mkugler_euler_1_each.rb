#!/usr/bin/env ruby
# https://projecteuler.net/problem=1

# Solution attempt by Mehron Kugler
# Description: 
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def find_and_add_multiples(multiple1, multiple2, range)
  sum_of_multiples = 0
  
  range_to_array = (0...(range)).to_a
  range_to_array.each { |multiple|
    if (multiple % multiple1 == 0) || (multiple % multiple2 == 0)
      sum_of_multiples += multiple
    end
  }
  sum_of_multiples
end

puts "According to Mehron Kugler's Ruby programming skills, the sum of all multiples of 3 and 5 below 1000 should be #{find_and_add_multiples(3,5,1000)}."
