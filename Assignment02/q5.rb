# Class StringCompress performs string compression operation by removing
# duplicates from the given string
class StringCompress

	# Class instance variable #compressed_str hold the compressed string
	# Class instance variable @indices holds the indices to @compressed_str array
	@@compressedword = []
	@@indices = []


	# Class method to set the class instance variables
	def self.set(str)
		raise "Missing Argument" if str.empty?
		str.split(" ").each do |word|
			@@compressedword.push(word) if @@compressedword.index(word).nil?
			@@indices.push(@@compressedword.index(word))
		end
	end

	# Class method to print the class instance variables
	def self.get
		print @@compressedword
		puts
		print @@indices
		puts
	end
end



