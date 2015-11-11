def is_account(string)
	if string.match(/\d{4}-\d{3}-\d{3}/)
		return true
	else
		return false
	end
end

def return_account(string)
	account = /\d{4}-\d{3}-\d{3}/.match(string).to_s
end

def array_account(string)
	string.scan(/\d{4}-\d{3}-\d{3}/).to_s
end

def x_account(string)
	string.gsub(/\d{4}-\d{3}/, "xxxx-xxx")
end

def format_account(string)
	if string.count("0123456789") >= 10
		string.gsub!(/\./, "-")
		string.sub! /(\d{4})(\d{3})(\d{3})/, '\1-\2-\3'	
  end
  string
end

puts format_account("cuenta 1234.123.123")
puts format_account("cuenta 1234567890")
puts format_account("cuenta 123456789")