
class MyClass
    
    attr_accessor :my_hash, :my_array
    
    def initialize
        @my_hash = {}
    end 
    
    def render
        @my_hash.each do |k, v|
            puts "Key: #{k}"
            puts "Value: #{v}"
        end 
    end 
    
    def add(key, value)
        @my_hash.each do |k, v|
            key = k
            value = v
        end 
    end 
    
    def my_array
        @my_array = []
        index = 0
        @my_hash.each do |k, v|
            @my_array[index] = @my_hash[k]
            index += 1
        end 
    end 
    
end


class MyClassB < MyClass
    
    attr_accessor :my_hash, :my_array_2
    
    def add(key, value)
        if value.is_a? Integer
            return true
        else 
            return false
        end 
    end 

    def my_array_2
        @my_array_2 = []
        index = 0
        @my_hash.each do |k, v|
            @my_hash[k] = v * 3
            @my_array_2[index] = @my_hash[k] 
            index += 1
        end 
    end
    
end 
