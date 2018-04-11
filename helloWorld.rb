print "what_your_name? "

name = gets

puts "hello_#{name}"

print "nhap so a: "
a = gets
A = a.to_i
print "nhap so b: "
b = gets 
B = b.to_i
print "Tong: "
total = A + B
puts "#{A} + #{B} = #{total}"

print "Hieu: "
total = A - B
puts "#{A} - #{B} = #{total}"

print "Tich: "
total = A * B
puts "#{A} * #{B} = #{total}"

print "Thuong: "
total = A / B
puts "#{A} / #{B} = #{total}"

print "Chia lay du: "
total = A % B
puts "#{A} % #{B} = #{total}"

# print "nhap so a: "
# a = gets
# A = a.to_i
# print "nhap so b: "
# b = gets 
# B = b.to_i
# print "nhap phep tinh: "
# c = gets
# C = c
# if C == +
#     total = A + B
# elsif C == -
#     total = A - B
# end
# puts "#{A} #{C} #{B} = #{total}"

# total = 2 + 3
# puts "2 + 3 = #{total}"

# total = 2 - 3
# puts "2 - 3 = #{total}"

# total = 2 * 3
# puts "2 * 3 = #{total}"

# total = 2 / 3
# puts "2 / 3 = #{total}"

# ho = "nguyen van "
# ten = "binh"
# str = ho + ten
# puts "#{str}"

# 3.times{print "nguyen van binh" + "\n"}

# name1 = "nguyen van binh".upcase
# name2 = "nguyen van binh".reverse
# puts name1 
# puts name2 

# arr = [1,2,3,4,5,6]
# arr.each do |num|
#     puts num
# end

# arr2 = Array.new

# arr2.push 1
# arr2.push 2
# puts arr2

# # tao tham so di vao

# a1 = Array.new
# a2 = Array.new 3
# a3 = Array.new 6, "coin"
# a4 = Array.new [11]
 
# puts [a1, a2, a3, a4].inspect

# #mang co the chua nhieu kieu khac nhau

# #arr1 = [1, 2, 3, 4, 5]
 
# #arr2 = [1, -1, "big", 3.4, Empty.new, arr1, :two]

# #puts arr2[5,1]

# arr = [1, 2, 3, [2, 4, 6, [11, 12]]]
 
# puts arr.length
# puts arr[0], arr[1]
 
# puts arr[3][0]
# puts arr[3][1]
 
# puts arr[3][3][0]
# puts arr[3][3][1]
 
# arr3 = [1,3,6]
# puts arr3[0,2].inspect

a =  [1, 2, 3, 4, 5] * 8 
puts a 

a = ('A'..'Z').to_a
a.each {|x| print x}

puts 1.class

x = 1
if x > 2
puts "x is greater than 2"
elsif x <= 2 and x!= 0
puts "x is 1"
else
puts "I can't guess the number"
end
#!/usr/bin/ruby
$debug = 1
print "debug\n" if $debug

 x = 30
old = if x == 10
then "10"
elsif x == 20
name = "20"
elsif x == 30 
then a = 20
     b =  10
     tong = a + b
end

puts old

# x = 10
# puts 'hello world' if x > 10 
# then 'out'
# end

name = case 
when x == 1 then "one"
when x == 2 then "two" 
when x == 3 then "three" 
when x == 4 then "four" 
else "many"
end 

$global=0
class C 
puts "in a class #{$global}"
def my_method
    puts "in a method #{$global}"
    $global=$global+1
    $other_global=3
end
end
C.new.my_method
puts "at top-lever,$global:#{$global},$other_global: #{$other_global}"


# Simple method
def factorial(n)
    if n < 1
        raise 'argument must be > 0'
    elsif n== 1
        1
    else
        n *factorial(n-1)
    end
end 