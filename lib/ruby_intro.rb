# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    arr_sorted = arr.sort
    return arr_sorted[arr_sorted.length-2] + arr_sorted[arr_sorted.length-1]
  end
end

def sum_to_n? arr, n
  if arr.length == 0 
    return false
  else
    arr_sorted = arr.sort
    i = 0
    j = arr_sorted.length - 1
    while i < j
      break if (arr_sorted[i] + arr_sorted[j]) == n
        
      if (arr_sorted[i] + arr_sorted[j]) < n
        i=i+1
      else 
        j=j-1
      end
    end 
    
    if i>=j
      return false
    else
      return true
    end
  end
end

# Part 2

def hello(name)
  return "Hello, " + name 
end

def starts_with_consonant? s
   s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  if s.length == 1 and s == '0'
    return true
  elsif /[^10]/.match(s) != nil
    return false
  elsif /.*00$/.match(s) != nil
    return true
  end
  return false
end
# puts binary_multiple_of_4?("1000000000001");
# Part 3

class BookInStock
  # constructor method
  def initialize(isbn, price)
   if isbn.length == 0
     raise ArgumentError, 'ISBN is empty'
   end
   if price <= 0
     raise ArgumentError, 'Price is less than 0'
   end
    @isbn = isbn
    @price = price
  end

  # getter methods
  def isbn
    @isbn
  end
  def price
    @price
  end

  # setter methods
  def isbn=(isbn)
    @isbn = isbn
  end
   
  def price=(price)
    @price = price
  end
   
  def price_as_string
    return "$"+('%.2f' % @price)
  end
end
