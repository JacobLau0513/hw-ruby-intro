# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  return arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length == 1
  arr.each_with_index do |val, id|
    return true if arr.[id+1..-1].include? n-val
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if /[a-zA-Z^$2-9*]/.match(s)
  return true if /^[10]*00$/.match(s) && s.to_i % 2 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price


  def initialize isbn, price
    raise ArgumentError if isbn.empty? or price <= 0.0
    @isbn = isbn
    @price = price
  end


  def price_as_string
    format("$"+"%.2f",@price)
  end

end
