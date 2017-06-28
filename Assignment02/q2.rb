# search_students method to query the students records for the given keyword
def search_students(students, keyword)
	result = students.select{|record| record[keyword.keys.first] == keyword.values.first}
	printf "%-20s %-20s %-20s", "FirstName", "LastName", "Ph no"
	puts	
	result.each do |x|
		x.each_value {|val| printf "%-20s", val}
		puts
	end
		
end



