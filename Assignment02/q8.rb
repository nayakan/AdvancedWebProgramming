# Method to read  conversation file given in question 8 and print out only the lines by ADVISOR
def scan_file(filename)
	File.readlines('conv.txt', "\n\n").map{ |s|
    unless(s.include?("STUDENT:"))
      puts s
    end
	} 
end	

