puts "Write your name:"
name = gets.chomp
nameup = name.upcase

puts "would you like be UPPERCASE?, write yes or no"
resp = gets.chomp
# => this is the  destructuve method
if resp == "yes"
	name.sub!(name, nameup)
	puts name
else
# => this the no destructive method	
	puts name.sub(name, "#{name} you don't like be #{nameup}")
	puts "stay #{name}"
end
