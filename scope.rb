$global_var = "this is a global variable"
CONSTANT = 3.1416

def global_var
	$global_var
end

def global_var=(value)
	$global_var = value
end

def constant
	CONSTANT
end

# def constant=(value)
# 	CONSTANT = value
# end

class DummyClass
	@@class_variable = "This is a class variable"

	def initialize
		@instance_var = "this is an instance var"
	end
	
	def return_my_local_var
 		local_var = "this is a local var"
	end

	# Este es un getter
  def instance_var
    @instance_var
  end

# Este es un setter
  def instance_var=(value)
    @instance_var = value
  end

  #getter
  def class_variable
  	@@class_variable
  end

  ##setter
  def class_variable=(value)
  	@@class_variable = value
  end

  def global_var
	$global_var
end

def global_var=(value)
	$global_var = value
end

def constant
	CONSTANT
end

# def constant=(value)
# 	CONSTANT = value
# end

end

dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

p dummy_1.class_variable = "new value for the class variable"
p dummy_2.class_variable


p dummy_1.instance_var=("Bar")
p dummy_2.instance_var   =    "Baz"

p global_var
p global_var=("new value for the global var")

p constant
p constant=(123)

p dummy_1.global_var
p dummy_2.global_var=("new value for the global var")