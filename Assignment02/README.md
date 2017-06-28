
Question 1.

Define a string using either literal or “here document”, for example, the following variable “str” is defined with a “here document”

str = <<EOS
Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
EOS

then write a method to calculate number of occurrence of any given word. if you pass 2 parameters, str and a string, then it will return number of occurrences of the string in str, if you just pass str, then it will return number of occurrences for every word in a hash

for example:  count_word(str, “and”) will return: 2

 
str = %{three, three, three} 
count_word(str),  will return: {“three”=>3}

******************************************************************************************************************************
Question 2.

Define an array of student record, for example,

students = [

{:firstname => "John", :lastname => "LastnameJohn",  :phonenumber => 123456789},

{:firstname => "Ken", :lastname => "Lastnameken",  :phonenumber => 456734244},

{:firstname => "Marisa", :lastname => "lastnamemarisa",  :phonenumber => 443234567},

{:firstname => "Ken", :lastname => "Kenlastname",  :phonenumber => 456734244}

]

write a method to be able to query student,

for example find all the record with first firstname is ken:

search_students(students, firstname: “ken”), it will print:

 

First Name  Last Name      Phone#

Ken            Lastnameken  456734244

Ken            Kenlastname   456734244

you can also define a class to hold students record data and search method,  then pass the object to search_students()
 
******************************************************************************************************************************
Question 3. write a class, this class is like this:

when you create a object of this class, it will take a pair of chars as surrounding chars and any number of strings.  it will put the surrounding chars to each string. and safe the result in a string as the state of the object.

for example, assuming the name of this class is Enclose, then i can create an object of this class and provide surrounding chars like this:

       obj = Enclose.new(“<“, “>”, “i”, “love”, “you”)

then the object will hold an instance variable with this value:

            ["<I>", "<love>", "<you>"]

you can also reset the instance variable by calling

        obj.set(“<“, “>”, “i”, “love”, “you”, “very”, “much”)

then the object will hold an instance variable with this value:

            ["<I>", "<love>", “<you>”, “<very”>, “<much>”]

then add an singleton method to this object, the method will reverse the order of the state  array
******************************************************************************************************************************
Question4.  write a class for compressing a string. when you create an object of this class, you provide a string, then the object save the compressed result (no duplicate words) as the state of the  object. the compressed result will have two arrays:  an array for strings and an array for index.

for example:  assuming the name of your class is Compress

to create an object, you can call like this:

           obj = Compress.new(“i love you but do you love me”)

then there will be two instance variables created inside the object to hold two values:

   [“i”, “love”, “you”, “but”, “do”, “me”]            # no duplicate word (compressed)

    [0, 1, 2, 3, 4, 2, 1, 5]      # index to the original array to  represent

                                         # original string

you can check these two variables using getter method
******************************************************************************************************************************
Question5.  rewrite the above programs in question Question4, using class method and class instance variable to provide the same functionalities.
******************************************************************************************************************************
Question 6.  one of the method in Array class is collect, it will return an array with values returned by  block. for example:

        [1,2,3,4,5].collect { |x| x*x }   

will return [1,4,9,16,25]   

each time the block get each element in x and return x*x to the yield method inside  the collect method. the collect method will use that value to form new array.

the collect! version will change the object, for example

     a = [1,2,3,4,5]

     a.collect! { |x| x*x }    # a will become [1,4,9,16,25]

re-open the class Array, re-implement these two methods.  

******************************************************************************************************************************
Question 7. Enumerable is a standard module (a standard mixin), it provides lots of methods, like for example reverse_each( ), inject( ), etc. To make those methods available, you need to define each( ) method in your class.

Define each() method in your class of question 4, it will return each words in the original string by using the compressed array and index.

then include Enumerable into your class and create examples of using 

reverse_each( ), inject( )   (to find the longest word, or to concatenate all word into string)

******************************************************************************************************************************
Question 8. Following is a conversation between ADVISOR and STUDENT in a text file,  each line either starts with ADVISOR or STUDENT or 5 spaces.

 

write a program to read this file and print out only the lines by ADVISOR

(including all text between ADVISOR and STUDENT)


ADVISOR: Now, then, Mr., uh, Vickstad. How can I help you?

STUDENT: Well, I'm thinking about transferring, but I'm, I'm not sure ...
     I was hoping you could help me make a decision.

ADVISOR: I'll try. Where are you thinking of transferring to? And why do
     you want to leave Kryptos U?

STUDENT: Um...I'm thinking of going to Central University, because it's
     in my hometown. I've uh, been kind of homesick here this year, and
     I haven't made many friends...I just feel so lonely. So, I thought that
     uh, maybe, it'd be better to be closer to my parents and friends and
     all.

ADVISOR: I see. And would you keep the same major if you transferred?
     What is it…business administration?

STUDENT: Yeah, I would. The credits I've earned here will transfer to
      Central. I've already checked.

ADVISOR: May I ask why you chose to come to Kryptos University in the
      first place?

STUDENT: Sure. Um, well, the main reason is you have a great business
     school. And the second reason is that I...I wanted to get away from
     home.

ADVISOR: You're right, Mr. Vickstad, we do have an excellent business
      school. But, so does Central. The thing is, you've got almost a year
      under your belt here now. At Central, you'll be starting from scratch.

STUDENT: Yeah, I know that. But I'm a little bit familiar with Central,
      'cuz I had older friends who went there, and I visited it before I came
    here.

ADVISOR: You know, freshman year is usually the hardest. I remember
     how homesick I was my first year. I'll tell you, I was ready to pack it
     in after the first two weeks. But the longer I stayed, the more       
     comfortable I felt. By senior year, I was glad I chose to stay.

STUDENT: Really? Did it get a lot better your sophomore year?

ADVISOR: Yes, it did. You might well find the same is true for you. Also,
     even though your credits here will transfer, you will have to take
     extra courses, because Central has different requirements. You'll
     probably have to go to school for an extra year.

STUDENT: Hmm...I hadn't thought about that. I'll have to check into it. 
      Maybe I should give it one more year. I mean, it's probably good for
      me to learn to live away from my family and friends, right? It'll make
      me stronger in the future.

ADVISOR: You can always move back there after you graduate. Of
      course, by that time you may not want to!

STUDENT: Thank you for all your help. I guess I'll find out the exact  
      transfer requirements. You've given me a lot to think about.

ADVISOR: Don't mention it. If you feel like you want to talk more, don't
      hesitate to come back and see me.

 
