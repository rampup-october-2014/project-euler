#!/usr/bin/env ruby
# https://projecteuler.net/problem=1

# Solution attempt by Mehron Kugler
# Description: 
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# Create loop of counter from 1 to 999 -- "BELOW" 1000, can't include 1000
# evaluate the number, is it divisible by 3? (look at division remainder)
# if not, is it divisible by 5?
# store in the array
# if not, move on to the next number
# add up all the numbers, return it as a variable

def divisible_by_3(number_to_check)
  division_result = (number_to_check / 3)
  if number_to_check % 3 == 0 # if dividing results in a whole number
    return true
  else return false
  end
end

def divisible_by_5(number_to_check)
  division_result = (number_to_check / 5)
  if number_to_check % 5 == 0 # if dividing results in a whole number
    return true
  else return false
  end
end

def all_multiples_3_5_below_1000
  debug = false
  stored_multiples = Array.new # initialize the array
  sum_of_multiples = 0

  for counting_upwards in 0..999
    current_number = counting_upwards
    # main logic
    if divisible_by_3(current_number) == true || divisible_by_5(current_number) == true
      stored_multiples.push(current_number) # append current number to stored_multiples
       puts "I put #{current_number} in stored_multiples array." if debug == true
    end
  end

  puts "I stored a total of #{stored_multiples.length} numbers." if debug == true
  stored_multiples.inspect
  # loop is finished, all multiples of 3 and 5 are stored now
  stored_multiples.each do |saved_number|
    sum_of_multiples += saved_number
      puts "Adding the number #{saved_number} since it was divisible by 3 or 5." if debug == true
  end
  return sum_of_multiples
end

puts "According to Mehron Kugler's Ruby programming skills, the sum of all multiples of 3 and 5 below 1000 should be #{all_multiples_3_5_below_1000}."


  