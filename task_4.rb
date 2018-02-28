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
    # print "nhap phan tu cho ma tran A : \n"
    # print 'nhap phan tu a[0][0] : '
    # a = gets
    # a = a.to_i
    # print 'nhap phan tu b[2][0] : '
    # b = gets
    # b = b.to_i
    # print 'nhap phan tu c[3][0] : '
    # c = gets
    # c = c.to_i
    # d = Matrix[[a,2,3], [b,6,7], [c,9,0]]
    # puts "ma trận A: "
    # puts d.each_slice(d.column_size) {|r| p r }   
#5. ma tran chuyen vi
    arr = []
    print "nhap kich co ma tran : "
    size = gets
    size = size.to_i
    print "nhap ma tran : "
    i = gets
    i = i.to_i
    for i  in 0..5
        if i < size
            then i+=1
            for j in 0..5
                if j < size 
                    then j+=1
                    arr.push "1"
                end
            end
        end
    end
    print "ma tran vua nhap la : "
    for i  in 0..3
        if i < size
            then i+=1
            print "\n"
            for j in 0..3
                if j < size 
                    then j+=1
                    print "\t #{arr}"
                end
            end
        end
    end

#7. nhan 2 ma tran
    # a = Matrix[[1,0,2], [-1,3,1]]
    # puts "ma trận A: "
    # puts a.each_slice(a.column_size) {|r| p r }
    # b = Matrix[[3,1], [2,1], [1,0]] 
    # puts "ma trận B: "    
    # puts a.each_slice(a.column_size) {|r| p r }    
    # tich = a * b
    # puts "tích 2 ma trận A * B"
    # puts tich.each_slice(tich.column_size) {|r| p r }
    

