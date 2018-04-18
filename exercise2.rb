def is_polinom x
	temp = x
	nghich_dao = 0
	while x > 0
	  mod = x % 10
	  x = x / 10
	  nghich_dao = nghich_dao * 10 + mod
	end
	return true if nghich_dao == temp
	false
end

arr = Array.new

f = File.open("in.txt","r")
n = 0
f.each_line do |line|
    arr = line.split " "
end
f.close
puts arr

arr.map! { |n| n.to_i}
puts "##################################  mang tang dan #############################"
arr.sort! { |a,b| a <=> b}
puts arr.join " "
puts "##################################  mang giam dan ########################"
arr.sort! { |a,b| b <=> a}
puts  arr.join " "
puts "##################################  polinum ############################"
arr.each do |n|
    puts n if is_polinom n
end
