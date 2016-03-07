def run
	investment = 2
	arr = {
		caps: 0,
		bottles: 0,
		total_bottles: 0
	}

	while (investment>1)
		puts "How much would you like to spend in dollars?"
		investment = gets.chomp.to_i
		arr[:total_bottles] += investment/2
		arr[:bottles] += arr[:total_bottles]
		arr[:caps] += arr[:total_bottles]
		recycle(arr)
		puts "You've purchased #{investment/2} bottles, you've received #{arr[:total_bottles]/2} bottles from bottle recycling, and #{arr[:total_bottles]/4} bottles from cap recycling"
		puts "You have #{arr[:caps]} caps left and #{arr[:bottles]} empty bottles left"
		arr[:total_bottles] = 0
	end
end

def recycle (arr)
	if (arr[:caps]<4&&arr[:bottles]<2)
		return arr
	end
	gained = 0
	gained += arr[:caps]/4
	gained += arr[:bottles]/2
	arr[:total_bottles] += gained
	arr[:caps] = gained + arr[:caps]%4
	arr[:bottles] = gained + arr[:bottles]%2
	return recycle (arr)
end
run