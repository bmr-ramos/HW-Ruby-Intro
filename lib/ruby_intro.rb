# frozen_string_literal: true

# Part 1
# bundle exec rspec -fd spec/part1_spec.rb

def sum(arr)
  # YOUR CODE HERE
  arr.sum
end
  
def max_2_sum(arr)
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  return false if arr.nil? || arr.length < 2

  seen = {}
  arr.each do |x|
    return true if seen[number - x]
    seen[x] = true
  end

  false
end




# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
