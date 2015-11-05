# Dado un array de números imprime únicamente los elementos que contienen un indice impar
# Utiliza: Enumerable#each_with_index
def print_odd_indexed_integers(array)
	indexed=[]

	array.each_with_index { |num, i| indexed << [num, i+1] }
	
	indexed.reject! {|a, b| b%2==1 }
	
end

print print_odd_indexed_integers([2, 4, 6, 8, 10, 12])

# Dado un array de números regresa un array con solo sol numeros impares
# Utiliza: Enumerable#select
def odd_integers(array)
	array.select{|num| num % 2 == 1}
end

p odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]

# Dado un array y un límite regresa el primer numero que sea menor al límite 
# Utiliza: Enumerable#find
def first_under(array, limit)
	array.find {|num| num <= limit}
end

puts first_under([13, 21, 7, 0, 11, 106], 10) == 7

# Dado un array de strings y regresa un nuevo array donde todos los elementos contengan al final un signo de admiración. 
# Utiliza: Enumerable#map
def add_bang(array)
	array.map { |a| a + "!"}
end

p add_bang(["hello", "world"]) == ["hello!", "word!"]

# Dado un array de números calcula la suma de todos sus elementos. 
# Utiliza: Enumerable#reduce
# Repite el ejercicio con Enumerable#inject
def sum(array)
	array.reduce(:+)
end

puts sum([1, 1, 2, 3, 5]) == 12

def inj(array)
	array.inject(:+)
end

puts inj([1, 1, 2, 3, 5]) == 12

# Dado un array de string reorganizalo en grupos de tres y ordénalos alfabéticamente.  
# Utiliza: Enumerable#each_slice
def sorted_triples(array)
	array.each_slice(3) {|a| p a}
end

words = %w(De esta simple manera se puede reorganizar una oración)  
p sorted_triples(words) == [["De", "esta", "simple"], ["manera", "puede", "se"], ["oración", "reorganizar", "una"]]                            