print "what_your_name? "

name = gets

puts "hello_#{name}"

print "nhap so a: "
a = gets
A = a.to_i
print "nhap so b: "
b = gets 
B = b.to_i
print "nhap phep tinh: "
c = gets
C = c
if C == "+"
    total = A + B
elsif C == "-"
        total = A - B
end
puts "#{A} #{C} #{B} = #{total}"

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
