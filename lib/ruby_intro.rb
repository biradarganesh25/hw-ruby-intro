# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  ans = 0
  arr.each {|ele| ans += ele}
  ans
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort! do |a,b| 
    b <=> a
  end
  if arr.empty? 
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  return arr[0]+arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  num_eles = arr.length
  (0...num_eles).each do |i|
    (i+1...num_eles).each do |j|
      if arr[i]+arr[j]==n
        return true
      end
    end
  end
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  if (['A','E','I','O','U'].include? s[0].upcase) || (!s[0].match(/[[:alpha:]]/))
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  s.each_char do |i| 
    if !['1','0'].include? i 
      return false
    end
  end
  if s.to_i(10) % 4 == 0 
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn, price
    if price <= 0 || isbn == ""
      raise ArgumentError
    end
    @isbn=isbn
    @price=price
  end

  def price_as_string
    @ans = "$%.2f" % @price
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn= isbn
    if isbn == ""
      raise ArgumentError
    end
    @isbn = isbn
  end

  def price= price
    if price <= 0
      raise ArgumentError
    end
    @price = price
  end
end
