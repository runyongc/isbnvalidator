def CheckISBNTen(isbn_num)
	isbn = isbn_num
	sum = 0;
	isbn.each_char.with_index do |char, ndx| 
	sum += (char.to_i * (10 - ndx))
	end
	if sum % 11 == 0
		return true
		puts "This is a valid 10 digit ISBN."
	else
		puts "This is not a valid 10 digit ISBN."
	end
end

def CheckISBNThirteen(isbn_num)
	isbn = isbn_num
	sum = 0;
	isbn.each_char.with_index do |char, ndx| 
	sum += (char.to_i * (ndx % 2 == 0 ? 1 : 3))
	end
	if sum % 10 == 0
		puts "This is a valid 13 digit ISBN."
		return true
	else
		puts "This is not a valid 13 digit ISBN."
	end
end


def ISBNInput()
	puts "Please enter a 10 or 13 digit ISBN using only integers."
	response = gets.chomp!
	if response.length == 10
		CheckISBNTen(response)
	end
	if response.length == 13
		CheckISBNThirteen(response)
	end
	if response.length != 10 || 13 
		puts "The ISBN must be 10 or 13 digits."
	end
end
