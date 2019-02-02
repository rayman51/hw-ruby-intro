# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  s = 0
	arr.each {|x| s+= x}
	s
end
#====================
def max_2_sum(arr)
  return 0 if arr.empty?
	return arr[0] if arr.length == 1
	ar = arr.sort
	ar[-1] + ar[-2]
end
#====================
def sum_to_n?(arr, n)
  return false if arr.empty? or arr.length == 1
  
  h = Hash.new
	arr.each{|x| 
		if h.key? x
			return true
		else
			h[n - x] = n	
		end
	}
	return false
end
#================
#================
# Part 2

def hello(name)
  "Hello, #{name}"
end
#================
def starts_with_consonant?(s)
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end
#================
def binary_multiple_of_4?(s)
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end
#================
#================
# Part 3

class BookInStock
  
	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end
	
	attr_accessor :isbn
	attr_accessor :price 
	
	def price_as_string
		sprintf("$%2.2f", @price)
	end
	
end
#================
