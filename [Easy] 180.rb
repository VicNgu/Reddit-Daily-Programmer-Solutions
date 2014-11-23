# This program produces sequence of numbers where each term is given by describing the makeup of the previous term.

# Yields the count of the current integer followed by the integer itself
def counter(currentInteger)
	j = 0
	count = 1

	if(currentInteger.length == 1)
			yield 1,currentInteger[0]
	else
		while j < currentInteger.length
			if(currentInteger[j] == currentInteger[j+1])
				count = count + 1
			else
				yield count,currentInteger[j]
				count = 1
			end

			j = j+1
		end 
	end
end

# The seed
seed = gets.chomp

# Number of iterations 
n = gets.to_i

# Initialize array by splitting the input into individual integers
input = []
seed.split('').each {|d| input << d.to_i;input}
i = 1

# Print n = 1
puts seed

while i < n

	j = 0
	tempArray = []

	# Goes through and counts the sets of the same integer, followed by the integer itself
	# Ex. 112 ; There is two 1, one 2, so it will print 2112
	counter(input) {|x,y| print "#{x}#{y}"; tempArray << x;tempArray; tempArray << y;tempArray }
	input = tempArray

	print "\n"
	i = i + 1
end  
