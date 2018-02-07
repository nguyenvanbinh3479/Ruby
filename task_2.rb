# 1. in so tu 1 - 10 tang dan
	# x = 1	
	# while x <= 10 do
	# 	puts x 
	# 	x += 1
	# end 
# 2. in so tu 10 - 1 giam dan
	# x = 10
	# while x >= 1 do
	# 	puts x 
	# 	x -=1
	# end 
# 3. in bang so
	# for i in 0..99
	# 	if i % 10 == 0
	# 		puts ""
	# 		print "#{i} \t"
	# 	else
	# 		print "#{i} \t"
	# 	end
	# end
# 4. bang cuu chuong
	puts "bang cuu chuong"
	for i in 1..10
		for j in 2..9
			print "#{j} x #{i} = #{j * i} \t"
		end
		puts ""
	end