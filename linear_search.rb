def linear_search(target, values)
	i = 0
	until values[i] == target || values[i] == nil
		i += 1
	end
	values[i] == target ? i : nil
end
random_numbers = [4, 3, 2, 20, 5, 64, 78, 11, 43]
p linear_search(20, random_numbers)
p linear_search(29, random_numbers)