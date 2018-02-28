# 1,2. cong, tru 2 ma tran
    require 'matrix'        
    # a = Matrix[[1,2,3], [5,6,7], [8,9,0]]
    # puts "ma trận A: "
    # puts a.each_slice(a.column_size) {|r| p r }
    # b = Matrix[[3,2,1], [7,6,5], [0,9,8]] 
    # puts "ma trận B: "    
    # puts a.each_slice(a.column_size) {|r| p r }    
    # t = a + b 
    # h = a - b
    # puts "tổng 2 ma trận A + B"
    # puts t.each_slice(t.column_size) {|r| p r }
    # puts "hiệu 2 ma trận A - B"
    # puts h.each_slice(h.column_size) {|r| p r }

# 3. tinh duong cheo ma tran
    # c = Matrix[[1,2,3], [5,6,7], [8,9,0]]
    # puts "ma trận A: "
    # puts c.each_slice(c.column_size) {|r| p r }
#7. nhan 2 ma tran
    a = Matrix[[1,0,2], [-1,3,1]]
    puts "ma trận A: "
    puts a.each_slice(a.column_size) {|r| p r }
    b = Matrix[[3,1], [2,1], [1,0]] 
    puts "ma trận B: "    
    puts a.each_slice(a.column_size) {|r| p r }    
    tich = a * b
    puts "tích 2 ma trận A * B"
    puts tich.each_slice(tich.column_size) {|r| p r }
    

    
