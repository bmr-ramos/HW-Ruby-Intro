# frozen_string_literal: true

# ------------------------------------------------------------------
# Part 1
# bundle exec rspec -fd spec/part1_spec.rb

def sum(arr)
  # YOUR CODE HERE
  # returns total sum of all numbers in array
  # if arr is empty, .sum will automatically return 0 - matches the spec
  arr.sum
end
  
def max_2_sum(arr)
  # YOUR CODE HERE
  # max_2_sum will return sum of two largest numbers in array
  # if arr has less than 2 elements, [] -> [].sum => 0 and [3] -> [3].sum => 3
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  # will return true if any two distinc elements in the array sum to number
  # if arr is nil or < 2 elements, will return false
  return false if arr.nil? || arr.length < 2

  seen = {}
  arr.each do |x|
    return true if seen[number - x]
    seen[x] = true
  end

  false
end


# ------------------------------------------------------------------
# Part 2
# bundle exec rspec -fd spec/part2_spec.rb

def hello(name)
  # YOUR CODE HERE
  # returns greeting string that includes given name
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  # will return true if the first character is starting with a consonant
  # a consonant is any letter other than a, e, i, o, u and case insensitive
  # strictly true or false and not a nil or int
  !!(string =~ /\A[bcdfghjklmnpqrstvwxyz]/i)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  # returning true if string is a val bin number (contains only 0s and 1s)
  # and is a multiple of 4
  # if string has invalid chars, return false
  # 0 is valid and divisible by 4
  # all other multiples of 4 in binary end with 00
  return false unless string.match?(/\A[01]+\z/)
  string == "0" || string.end_with?("00")
end

# ------------------------------------------------------------------
# Part 3
# bundle exec rspec -fd spec/part3_spec.rb
# Object representing a book
class BookInStock
  # YOUR CODE HERE
  # representing a book with an ISBN number and price
  # ISBN = string, price = float
  # ISBN = cannot be empty
  # price = must be > 0 (if not, raise ArgumentError)
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    self.isbn = isbn   # use setter method so validation is applied
    self.price = price
  end

  def isbn=(isbn)
    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    @isbn = isbn
  end

  def price=(price)
    raise ArgumentError, 'Price must be > 0' if price <= 0
    @price = price
  end
  
  # returning the price of the book as a string with a leading $
  # also always 2 decimal places
  def price_as_string
    format('$%.2f', @price)
  end

end
