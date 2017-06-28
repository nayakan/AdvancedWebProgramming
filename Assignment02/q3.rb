# Class Enclose takes as arguments string/array of strings and a pair of user given characters
# and encloses each string with the user given character.
class Enclose
	# Constructor to initialize object instance variables
	def initialize(char1, char2, *args)
		if args.length == 0
			puts "Please enter correct number of arguments"
		end
		@char1 = char1
		@char2 = char2
		@arr = args.map{|x| char1+x+char2}
	end

	# Method to set the object instance variables with new values
	def set(char1, char2, *args)
		@arr = args.map{|x| char1+x+char2}
	end

	# Method to get the enclosed string
	def get
		return  @arr
	end

end








	

	
