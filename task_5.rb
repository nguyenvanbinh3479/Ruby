# 1. in 1 chuoi
	# puts "hello you"
	# print "hello you"
# 2. tim do dai chuoi

# 3. 
	str = "hello worlddd"
	puts "nhap ky tu can tim"
	key = gets.chomp
	count = 0
	puts str.size
	for i in 0..str.size
		if str[i].eql? key
			count += 1
		end
	end
	puts "so lan xuat hien ky tu #{key} trong chuoi : #{count}"