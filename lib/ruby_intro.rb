# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length > 0
        arr.inject {|add,n| add+n}
  else
        0
  end

end

def max_2_sum arr
  n = arr.length
  if n == 0
    0 
  elsif n == 1
    arr[0]
  else
    x = arr.sort.reverse
    x[0] + x[1]    
  end

end

def sum_to_n? arr, n
  if arr.length > 0 
    # m represents the numbers, here x and y, that adds upto n
    m = arr.combination(2).find{|x,y| x + y == n}
    m != nil
  else
    false
  end

end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  !!(s[0] =~ /[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4? s
    if !!(s =~ /[^01]/) == true || s.length == 0
      false
    else
      if s.to_i(2) % 4 == 0
        true
      else
        false
      end
    end
end


# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    price = price.to_f
    if isbn.length != 0 && price > 0
      @isbn = isbn
      @price = price
    else
      raise ArgumentError.new("Incorrect argument")
    end
  end
  
  def price_as_string
    return "$" + format("%.2f", @price)
  end

end
