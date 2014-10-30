#!/usr/bin/env ruby
# https://projecteuler.net/problem=1

# Solution attempt by Mehron Kugler
# Description: 
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def find_and_add_multiples(multiple1, multiple2, range)
  debug = false                 # toggle debug messages
  stored_multiples = Array.new  # initialize the array
  sum_of_multiples = 0

  for counting_upwards in 0..(range-1)
    # main logic
    if (counting_upwards % multiple1 == 0) || (counting_upwards % multiple2 == 0)
      stored_multiples << counting_upwards
       puts "I put #{counting_upwards} in stored_multiples array." if debug == true
    end
  end

  puts "I stored a total of #{stored_multiples.length} numbers." if debug == true

  stored_multiples.each do |saved_number|
    sum_of_multiples += saved_number
  end
  sum_of_multiples
end

puts "According to Mehron Kugler's Ruby programming skills, the sum of all multiples of 3 and 5 below 1000 should be #{find_and_add_multiples(3,5,1000)}."
