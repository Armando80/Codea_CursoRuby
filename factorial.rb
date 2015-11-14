def factorial_iterative(num)

	(1..(num.zero? ? 1 : num)).inject(:*)

end

p factorial_iterative(3)

def factorial_recursive(num)
	f = 1
	for i in 1..self
		f *=  i
	end
end

p factorial_iterative(5)