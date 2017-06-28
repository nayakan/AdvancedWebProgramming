# Implement a class to perfrom string compression by removing duplicates
# from the string
class CompressString

	include Enumerable
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

	# Method to return the compressed word array
	def get_compressedword
		return @compressed_str
	end

	# Method to return indices of compressed word array
	def get_indices
		return  @indices
	end

	# Implement each inorder to use Enumerator
	def each
		if block_given?
			@indices.each{|x| yield(@compressed_str[x]) }
		end
	end

	def find_longest
		@str.inject do |memo, word|
			memo.length > word.length ? memo : word
		end
		puts longest
	end

end




