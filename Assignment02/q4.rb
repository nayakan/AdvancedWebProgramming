# Class that performs string compression by removing duplicates fron the string
class CompressString1

	# object instance variable #compressed_str hold the compressed string
	# object instance variable @indices holds the indices to @compressed_str array
	def initialize(str)
		@str = str
		if str.empty?
			puts "Inputed string is empty. Please input a valid string"
		else
			@compressed_str, @indices = compress_helper(str)
		end
	end
	# Helper method to compress string and get indices
	def compress_helper(str)
		temp_array = str.split(" ")
		index_array = []
		word_array = []
		index = 0
		temp_array.each do |word|
			if !word_array.include?(word)
				word_array.push(word)
				index_array.push(index)
				index += 1
			else
				repeated_index = word_array.find_index(word)
				index_array.push(repeated_index)
			end
		end
		return word_array, index_array
	end

	# Getter method to print the compressed string
	def get_compressedword
		print @compressed_str
		puts
	end

	# Getter method to get the indices of the compressed string array
	def get_indices
		print @indices
		puts
	end
end










	
