investment = 2
bottles = 0
empty_bottles = 0
caps = 0
gained = 0
while (investment>1)
	puts "How much would you like to spend in dollars?"
	investment = gets.chomp.to_i
	bottles += investment/2
	empty_bottles += bottles
	caps += bottles
	while(caps>=4||empty_bottles>=2)
		gained += caps/4
		gained += empty_bottles/2
		bottles += gained
		caps = gained + caps%4
		empty_bottles = gained + empty_bottles%2
		gained = 0
	end
	puts "You've purchased #{investment/2} bottles, you've received #{bottles/2} bottles from bottle recycling, and #{bottles/4} bottles from cap recycling"
	puts "You have #{caps} caps left and #{empty_bottles} empty bottles left"
	bottles = 0
end
