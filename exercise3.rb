class Animal
    MEO, CHO, HEO, VIT = 1, 2, 3 ,4
    attr_accessor :name, :price
    def initialize(name, price)
      @name, @price = name, price
    end
  
    def is_type
    end
  
    def to_s
      "(Name:#{@name} - Price:#{@price})"
    end
  end
  
  class Meo < Animal
    def initialize(name, price)
      super(name, price)
    end
  
    def is_type
      super::MEO
    end
  end
  
  class Cho < Animal
    def initialize(name, price)
      super(name, price)
    end
  
    def is_type
      super::CHO
    end
  end
  
  class Heo < Animal
    def initialize(name, price)
      super(name, price)
    end
  
    def is_type
      super::HEO
    end
  end
  
  class Vit < Animal
    def initialize(name, price)
      super(name, price)
    end
  
    def is_type
      super::VIT
    end
  end
  
  animals = Array.new
  index = 0
  i = 0
  name = ''
  price = 0
  f = File.open("in.txt","r")
  f.each_line do |line|
    index = index + 1
    i = line.to_i if index == 1
    name = line if index == 2
    price = line.to_i if index == 3
    if index == 3
      index = 0
      animal = Meo.new(name, price) if i == Animal::MEO
      animal = Cho.new(name, price) if i == Animal::CHO
      animal = Heo.new(name, price) if i == Animal::HEO
      animal = Vit.new(name, price) if i == Animal::VIT
      animals.push animal
    end
  end
  
  f.close
  
  
  animals.each do |animal|
    puts animal
  end
  
  
#   Dem so luong con vat
  
  so_meo = 0
  so_cho = 0
  so_heo = 0
  so_vit = 0
  animals.each do |animal|
    so_meo = so_meo + 1 if animal.is_type == Animal::MEO
    so_cho = so_cho + 1 if animal.is_type == Animal::CHO
    so_heo = so_heo + 1 if animal.is_type == Animal::HEO
    so_vit = so_vit + 1 if animal.is_type == Animal::VIT
  end