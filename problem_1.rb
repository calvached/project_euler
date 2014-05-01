# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_all_multiples_of(num_1 , num_2)
	combine_multiples_and_remove_duplicates(num_1, num_2).reduce(:+)
end

def combine_multiples_and_remove_duplicates(num_1, num_2)
	(get_all_multiples(num_1) + get_all_multiples(num_2)).uniq
end

def get_all_multiples(number)
	multiples = []
	(1..999).each { |num| multiples << num if num % number == 0 }
	multiples
end

p sum_of_all_multiples_of(3,5)