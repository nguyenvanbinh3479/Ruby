#===========================================CHAPTER 1: Introduction=================================================

#-----methods-----

5.times{
    # print Ruby 5 time
    print "Ruby!"+"\n"
}

0.upto(9){
    # print 123456789
    |x| print "#{x}\n"
}

#-----array-----

a = [3,2,1]
a[3] = a[2]-1
a.each do |elt| #  each will browse each element of the array
    print elt + 1
end
print"\n"

a = [1,2,3,4]
b = a.map{
    |x| x*x
}
c = a.select{
    |x| x%2==0
}
a.inject do |sum,x|
    sum + x
end
print a, b, c
print "\n"

#-----hash-----

h = {
    :one => 1,
    :two => 2
}
h[:one]
h[:three] = 3
h.each do |key, value|
    print "#{value}:#{key}"
end
print "\n"
#-----file-----
File.open("data.txt") do |f|
    line = f.readline
end
t = Thread.new do
    File.read("data.txt")
end

1 + 2
1 * 2
1 + 2 == 3
2 ** 1024
"Ruby" + "Rocks"
"Ruby" * 3
"%d %s" %[3, "rubies"]
# max = x > y ? x:y 


#-----methods-----
x = 10
def Math.square(x)
    x*x
end
print x
print "\n"

#----- Assignment-----
 x = 1
 x, y = 1, 2 #same as x=1,y=2
 a, b =b, a #swap 
 x,y,z = [1,2,3]

 def polar(x,y)
    theta = Math.atan2(y,x)
    r = Math.hypot(x,y)
    [r,theta]
 end
 distance, angle = polar(2,2)

#-----regexp and range-----
/[Rr]uby/ #ruby or Ruby
/\d{5}/ # count number
1..3 # all x where 1 <= x <= 3
1...3 # all x where 1<= x < 3

# generation = case birthyear
#              when 1946..1963: "old man"
#              when 1990..2010: "man"
#              else nil
#              end
def are_you_sure?
    while true
        print "are you sure? [y/n]:"
        response = gets
        case response
    when /^[yY]/
        return true
    when /^[nN]/, /^$/
        return false
    end
end
end

def each
    x = @from # Start at the starting point
    while x <= @to # While we haven't reached the end
end
end
def length
    return 0 if @from > @to
    Integer((@to-@from)/@by) + 1
end
alias size length
def[](index)
    return nil if index < 0
    v = @from + index*@by
    if v <= @to
        v 
    else
        nil
    end
end
def*(factor)
    Sequence.new(@from*factor,@to*factor, @by*factor)
end
def+(offset)
    Sequence.new(@from+offset, @to+offset, @by)
end


# s = Sequence.new(1, 10, 2)
# s.each {|x| print x}
# print s[s.size-1]
# t = (s+1)*2

module Sequences # Begin a new module
    def self.fromtoby(from, to, by) # A singleton method of the module
    x = from
    while x <= to
    yield x
    x += by
    end
end
end
Sequences.fromtoby(1, 10, 2) {|x| print "#{x}\n" } # Prints "13579"
class Range # Open an existing class for additions
    def by(step) # Define an iterator named by
    x = self.begin # Start at one endpoint of the range
    if exclude_end? # For ... ranges that exclude the end
    while x < self.end # Test with the < operator
    yield x
    x += step
    end
    else # Otherwise, for .. ranges that include the end
    while x <= self.end # Test with <= operator
    yield x
    x += step
    end
    end
    end # End of method definition
    end # End of class modification
    # Examples
    (0..10).by(2) {|x| print x} # Prints "0246810"
    (0...10).by(2) {|x| print x} # Prints "02468"
    print "\n"

    9.downto(1){
        |n| print n
    }
    puts "blastoff"
    puts "\n"

#======================================CHAPTER 2: The Structure and Execution of Ruby Programs============================
#-----comments-----
x = "#this is a string"
y = /this is a regular expression/
=begin
    The code that goes here is no longer commented out
    comment here
=end
#-----newlines-----
animals = Array.new
    .push("dog")
    .push("cow")
    .push("cat")
    .sort
print animals
print "\n"
#-----Syntactic Structure------
x = 0
if x < 10 then
    x = x + 1
end
while x < 10 do
    print x
    x = x + 1
end
print "\n"
#-----block-----
3.times do
    print "hello "
end
print "\n"

5.times { print "hey " }
print "\n"

0.upto(20) do |x|
    print "#{x}\n"
end

module Start
    class Dataset
        def initialize(filename)
            IO.foreach(filename) do |line|
                if line[0,1] =="#"
                    print 
                    next
                end
            end
        end
    end
end
#-----file structure-----
#!/usr/bin/ruby -w       shebang comment
# -*- coding: utf-8 -*-  coding comment
#require 'socket'         # load networking library
#...                      # program code goes here
#__END__                  #mark end of code
#...                      #program data goes here   
#================================================CHAPTER 3: Datatypes and Objects===========================
#-----number-----
x = 0.0/0.0
print x
print "\n"
y = 9.9 ** 1000
print y
print "\n"
z = 10 ** 1000
print z
print "\n"
#-----text-----
print 'Won\'t you read O\'Reilly\'s book?'+"\n"
message =
'These three literals are '\
'concatenated into one by the interpreter. '\
'The resulting string contains no newlines.'+"\n"
print message
#-----double quoted string lterals-----
pi="360 degrees = #{2*Math::PI} radians"
print pi
print "\n"
$salutation = 'hello'
print $salutation 
print "\n"
ct = "#$tation world"
print ct
print"\n"
et = "This string has three lines.\r\n" \
"It is written as three adjacent literals\r\n" \
"separated by escaped newlines\r\n"
print et
#-----Unicode escapes-----
num = "\u00D7"
nb = "\u{A5}"
print "#{num}\n"+"#{nb}\n"
money = "\u{20AC 20 A3 20 A5}\n"
print money
#-----Arbitrary delimiters for string literals-----
%q(don't worry about escaping)
%Q|"How are you"|
%-This string literal\n-
#-----Here Documents------
greeting = <<HERE + <<THERE + "World"
Hello
HERE
There
THERE
#-----Backtick command execution-----
#----- String literals and mutability-----
10.times { puts "test".object_id }
#-----The String.new method-----
#-----Character Literals-----
?\u20AC == ?€
?€ == "\u20AC"
#-----String Operators-----
planet = "Earth"
print "Hello" + " " + planet + "\n"
greeting = "hello"
greeting << " " << "world"
puts greeting + "\n"
print elip = "." * 3 + "\n"
#------Accessing Characters and Substrings-----
s = 'hello'
puts s[0]
puts s[s.length-1]
puts s[-1]
puts s[-2]
puts s[-s.length]
puts s[s.length] 
s = "hello"
s[0,1] = "H" # Replace first letter with a capital letter
s[s.length,0] = " world" # Append by assigning beyond the end of the string
s[5,0] = "," # Insert a comma, without deleting anything
s[5,6] = ""
puts s + "\n"
a = "world"
while(a["l"])
    a["l"] = "L";
end
puts a
#-----Iterating Strings-----
s = "¥1000"+"\n"
s.each_char {|x| print "#{x}"}
0.upto(s.size-1) {|i| print "#{s[i]}"}
#-----String Encodings and Multibyte Characters-----
#-----Multibyte characters in Ruby 1.9------
s = "2 x 2 = 4"
s.length

euro1 = "\u20AC"
puts euro1
#-----The Encoding class-------
#-----Multibyte characters in Ruby 1.8------
#-----Arrays------
world3 = %W[this is a text]
puts world3
puts "########################################"
count = Array.new(3) {|i| i+1}
puts count

a = [1,2,3,4,5,6,7,8,9]
a[0] = "zero"
puts a
puts "\n" 
puts "########################################"

b[0,2] = ['a','b']
puts b
puts "########################################"

a = a + [0,6,44]
puts a
puts "########################################"

c = []
c << 3
c << 5 << 7
c << [9,11,13]
puts c*7
puts "########################################"

d = [1,1,2,3,2,3,4,4]
e = [5,5,1,4]
puts d|e
puts d&e
puts "########################################"

a = ('A'..'Z').to_a
.each {|x| print x}
puts "\n"
puts "########################################"
#-----Hashes-----
numbers = Hash.new
numbers["one"] = 1
numbers["two"] = 2
numbers["three"] = 3

sum = numbers["one"] + numbers["two"]
puts numbers
puts "\n"
puts sum
puts "\n"
puts "########################################"

#------Hash Literals------
#-----Hash Codes, Equality, and Mutable Keys-----
#-----Ranges-----

r = 'a'..'c'
r.each{|l| print "[#{l}]"}
# r.step(2) {|l| print "#{l}"}
r.to_a
print "\n"
puts "########################################"
#-----Testing Membership in a Range-----

r = 0..100
r.member? 50
r.include? 100
r.include? 99.9


#-----Symbols-----

:symbol
:"symbol"
sym = :"#{s}"

# name = :size
# if o.respond_to? name
#     o.send(name)
# end

#-----True, False, and Nil-----

# o == nil
# o.nil?

#-----Objects------
#-----Object References-----

s = 'ruby'
t = s
t[-1] = ''
print s
t = 'java'
print s,t
print "\n"
puts "########################################"

#-----Immediate values-----
#-----Object Lifetime------
#-----Object Identity-----
#-----Object Class and Object Type-----
#-----Object Equality-----
#-----Object Order-----
#-----Object Conversion----

if x
    puts x
end

#-----Copying Objects-----
#-----Marshaling Objects-----
def deepcopy(o)
    Marshal.load(Marshal.dump(o))
end
puts "######################################"
#==============================================CHAPTER 4: Expressions and Operators======================================

2
x
Math.sqrt(2)
x = Math.sqrt(2)
x*x
puts x
puts "######################################"

#-----Literals and Keyword Literals-----

#-----Variable References-----

# Uninitialized Variables

q = 0.0 if false
    print q
    print z
puts "\n"
puts "######################################"
    
#-----Constant References-----
CM_PER_INCH = 2.34
CM_PER_INCH

#-----Method Invocations-----

puts "hello world"
Math.sqrt(2)
message.length
a.each {|x| p x}
puts '###########################################'

#-----Assignments-----

# Assigning to Variables

class Ambiguous
    def x; 1; end 
    def test
        puts x
        x = 0 if false
        puts x
        x = 2
        puts x
    end
end
