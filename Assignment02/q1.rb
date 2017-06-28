# Class houses the method count_word to perform following operations on string
# 1. Given two parameters str and string the method will return no of occurences of string in str.
# 2. Given single paramter str the method will return no of occurences of every word as hash

class MyString
    # Method to count occurence of word/str
	def count_word(*args)
        # If argument length is 1 then perform operation 1 described above.
		if args.length == 1
			str = args[0]
                        if str.empty?
                                 puts "Inputed string is empty. Please enter a valid string."
                        end
                        h = {}
                        str.split.each do |word|
                                 h.has_key?(word) ? h[word] += 1 : h[word] = 1
                        end
                        return h		
        # If argument length is 2 then perform operation 2 described above.
		elsif args.length == 2
			str = args[0]
			word = args[1]
                        if str.empty?
                                puts "Inputed string is empty. Please provide a valid string."
                        end
                        a = str.split(" ")
                        i  = count = 0
                        while i < a.length
                                if a[i] == word
                                        count += 1
                                end
                                i += 1
                        end
                        return count
        # Check if argument is empty
		else
			puts "Invalid no of arguments.Please enter minimum one or maximum two arguments"
		end
	end
end


