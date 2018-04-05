# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif
    arr.length == 1
    return arr[0]
  else
    return arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  len = arr.length-1
  for i in 0..len
    for j in (i + 1)..len
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
    return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
   /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
    s == "0" or
    /^[10]*00$/.match(s) != nil
  end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, p)
    if isbn.length > 0 && p > 0
      @isbn = isbn
      @price = p
    else
      raise ArgumentError
    end
  end

  def price_as_string
    "$%0.2f" % @price
  end
end
