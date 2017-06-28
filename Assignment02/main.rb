#!/usr/bin/env ruby
require_relative "q1.rb"
require_relative "q2.rb"
require_relative "q3.rb"
require_relative "q4.rb"
require_relative "q5.rb"
require_relative "q6.rb"
require_relative "q7.rb"
require_relative "q8.rb"

puts "########## Question 1 ###########"

str =<<EOS
Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
EOS

puts
puts "Invoking the method count_word"
obj1 = MyString.new
puts "Passing two arguments str and string as defined in the question"
r1 = obj1.count_word(str, "and")
puts "Printing the output"
puts r1
puts
puts "Passing one argument str as given in the question"
str1 = "three three three"
r2 = obj1.count_word(str1)
puts "Printing the output"
puts r2
puts
puts "Checking invalid argument by passing nil or more than two arguments"
puts "Printing the resultant error message"
obj1.count_word
puts

puts "########## Question 1 complete ##########"
puts

puts "########## Question 2 ##########"

puts
students = [
{:firstname => "John", :lastname => "LastnameJohn",  :phonenumber => 123456789},
{:firstname => "Ken", :lastname => "Lastnameken",  :phonenumber => 456734244},
{:firstname => "Marisa", :lastname => "lastnamemarisa",  :phonenumber => 443234567},
{:firstname => "Ken", :lastname => "Kenlastname",  :phonenumber => 456734244}
]

puts "Invoking method search_students with arguments student and firstname ken as given in the question"
puts "Printing the output"
search_students(students, firstname:  "Ken")
puts

puts "########## Question 2 complete ##########"
puts


puts "########## Question 3 ##########"
puts
a = ["<", ">", "i", "love", "you"]
puts "Creating an object of class Enclose with argument #{a} as given in question "
obj2 = Enclose.new("<", ">", "i", "love", "you")
puts
puts "Printing the enclosed string"
print obj2.get
puts
puts
b = ["<", ">", "i", "love", "you", "very", "much"]
puts "Resetting the instance variable with #{b}"
obj2.set("<", ">", "i", "love", "you", "very", "much")
puts "Printing the new enclosed string"
print obj2.get
puts
puts
puts "Creating object singleton method to reverse the order of the state array"
def obj2.reverse_order
	self.get.reverse
end
puts "Printing the reversed order"
print obj2.reverse_order
puts
puts
puts "Checking invalid argument condition"
puts "Printing the resultant error message"
obj3 = Enclose.new("<", ">")

puts
puts "########## Question 3 complete ##########"
puts

puts "########## Question 4 ##########"
puts "Creating object of the class CompressString"
obj7 = CompressString1.new("i love you but do you love me")
puts
var = "i love you but do you love me"
puts "passing #{var} to compress"
puts "Printing the compressed word"
obj7.get_compressedword
puts
puts "Printing the indices of compressed word"
obj7.get_indices
puts

puts "########## Question 4 complete ##########"
puts

puts "########## Question 5 ##########"
puts
str3 = "i love you but do you love me"
puts "Invoking the class method to set the class instance variables with #{str3}"
StringCompress.set("i love you but do you love me")
puts "Printing the compressed string"
StringCompress.get
puts

puts "########## Question 5 complete ##########"
puts


puts "########## Question 6 ##########"
puts
c = [1,2,3,4,5]
puts "Invoking the implemented collect method on #{c}"
puts "Printing the output"
print c.collect{|x| x * 2}
puts
puts "Printing the original array. It is unchanged unlike collect! method"
print c
puts
puts "Invoking the implemented collect! method on #{c}"
puts "Printing the output"
c.collect!{|x| x * 2}
print c
puts
puts "collect! method modifies the receiver. Printing the original array to verify"
print c
puts

puts "########## Question 6 complete ##########"
puts

puts "########## Question 7 ##########"
puts
puts "Creating object of the class CompressString"
obj6 = CompressString.new("i love you but do you love me")
puts
str5 = "i love you but do you love me"
puts "Passing #{str5} to compress"
puts
puts "Printing the compressed string"
print obj6.get_compressedword
puts
puts "Implemented the each method inorder to use Enumerable in our class CompressString"
puts "Testing the each method by appending a \'-\' at the end of the each word"
print obj6.each {|x| puts x+'-'}
puts
puts "Implementing inject method to find the longest word in the string"
puts "Printing the longest word in the string:"
longest = obj6.inject do |word, x|
	word.length > x.length ? word : x
end
print longest
puts
puts "########## Question 7 complete ##########"
puts

puts "########## Question 8 ##########"
puts
puts "Scanning the file consisting of conversation between student and advisor"
puts
puts "Printing the lines by advisor"
puts
scan_file("conv.txt")
puts

puts "########## Question 8 complete ##########"


