# class Point
#     def initialize x,y
#         @x, @y = x, y
#     end
#     def x; @x; end
#     def y; @y; end      
#     def x=(value)
#         @x = value
#     end
#     def y=(value)
#         @y = value
#     end
# end

# p = Point.new 5,6
# puts p.x

# p.x = 11
# puts p.x
##########################################
# class Point
#     attr_accessor :x, :y
#     def initialize x,y
#         @x, @y = x, y
#     end
# end

# p = Point.new 5,6
# puts p.x

# p.x = 11
# puts p.x
#############################################
# class Point
#     attr_reader :x, :y
#     def initialize x,y
#         @x, @y = x, y
#     end
#     def +(other)
#         Point.new(@x+ other.x, @y + other.y)
#     end
#     def -@
#         Point.new(-@x, -@y)
#     end
# end

# p = Point.new 5,6
# puts p.x
#########################doc file
# def is_polinom x 

# end 

# f = file.open("in.txt", "r")
# n = 0
# f.each_line do|line|
#     n = line.to_i
# end 
# count = 0
# while count < n
#     count++
# end 


# f.close
############################ cho meo

# f = file.open("in.txt", "r")
# step = 3
# index = 0
# f.each_line do|line|
#     i = line.to_i
#     case
#     when i == 1
#         puts 'meo'
#     when i == 2
#         puts 'cho'
#     when i == 3
#         puts 'vit'
#     when i == 4
#         puts 'heo'
#     end 
# end 
############################ ma tran
# f = file.open("in.txt", "r")
# step = 3
# index = 0
# f.each_line do|line|
# end
########################
# class Point
#     attr_accessor :x, :y
#     def initialize(x, y)
#         @x, @y = x, y
#     end 
#     def +(other)
#         Point.new(@x + other.x, @y + other.y)
#     end 
#     def -@
#         Point.new(-@x, -@y)
#     end 
#     def -(other)
#         Point.new(@x - other.x, @y - other.y)
#     end
#     def to_s
#         "#{@x}, #{@y}"
#     end 
#     def +(scale)
#         Point.new(@x * scale.x, @y * scale.y)
#     end 
# end 
# p1 = Point.new(10,20)
# p2 = Point.new(1,2)
# p3 = p1 + p2

# puts p3

###############################
class Person
    attr_accessor :name, :old
    def initialize (name, old)
        @name = name
        @old = old
    end 
    class << self
        def speak
            'vvv'
        end 
        def open
            'open'
        end
    end 
end 

class Student < Person
    attr_accessor :masv, :dtb
    def initialize (name, old, masv, dtb)
        super(name, old)
        @masv = masv
        @dtb = dtb
    end 
    def to_s
        "Name: #{@name} /// Old: #{@old} /// Masv: #{@masv} /// Dtb: #{@dtb}"
    end 
end 


std = Student.new("thi", 10, "sv01", 7)
puts std
std2 = Student.new("tuan", 20, "sv02", 8)
puts std2

def std2.tan 
    puts "sgvsvsev"
end 
puts std2.tan

puts Person.speak
puts Person.open
