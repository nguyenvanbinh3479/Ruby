
# def is_polinom x
# 	temp = x
# 	nghich_dao = 0
# 	while x > 0
# 	  mod = x % 10
# 	  x = x / 10
# 	  nghich_dao = nghich_dao * 10 + mod
# 	end
# 	return true if nghich_dao == temp
# 	false
#     end      
#     f = File.open("in.txt","r")
#     n = 0
#     f.each_line do |line|
#         n = line.to_i
#     end
#     f.close    
#     count = 0
#     i = 100
#     while count < 100 do
#         if is_polinom(i)
#         puts i
#         count = count + 1
#     end
#     i = i + 1
# end

def eager_fibonacci(n)
    a = b = 1
    result = []
  
    loop do
      break if result.size >= n
  
      result << a
      a, b = b, a + b
    end
  
    result
end