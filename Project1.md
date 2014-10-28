# I dicided to have it so you can put in you own number, 100 gave me 2318

input = gets.to_i

def summation(num)
count = 0
num.times do |i|
    if (i % 3 == 0 || i % 5 == 0)
    count += i
    end
end
return count
end

puts summation(input)
