# TODO: Refactoriza buscando elegancia 
def shout_backwards(string)
  all_caps  = string.upcase
  backwards = all_caps.reverse
  result    = backwards + "!!!"
  return result
end


def shout_backwards2(string)
  string.upcase.reverse + "!!!"
end


# AYUDAME: Refactoriza buscando elegancia 
def squared_primes(array)
  array.find_all{|x| (2..x-1).select(){|i| x % i == 0 }.count == 0 }.map{|p| p*p}
end

def squared_primes2(array)
  array.find_all{|x| (2..x-1).select(){|i| x % i == 0 }.count == 0}
  
end


# Driver code... no edites este texto. En la consola esto deberá imprimir puros trues
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]
p squared_primes2([1, 3, 4, 7, 42])


puts shout_backwards("HOLAAAAA")
def shout_backwards(string)
  all_caps  = string.upcase
  backwards = all_caps.reverse
  result    = backwards + "!!!"

  return result
end