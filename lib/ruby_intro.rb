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
  return arr.sort[-2..-1].sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty? or arr.length == 1
  s = Set.new
  arr.each do |val|
    if s.include?(n-val)
      return true
    else
      s.add(val)
    end
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
  return true if s == "0"
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
