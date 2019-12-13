class Board 
    
    attr_accessor :secret
    
    Colors = [ "Blue", "Yellow", "Gray", "Orange", "White", "Black"]
    
    def initialize
        @secret = []
        1.upto(4) do |i|
            number = rand(6)
            @secret[i-1] = Colors[number]
        end 
    end 
    
    def evaluate_guess(array)
        outcome_right_spot = 0
        outcome_wrong_spot = 0
        outcome_array = []
        @secret.each_index do |i|
            if array[i].include?(@secret[i])
                outcome_right_spot += 1
            end 
        end 
        return outcome_array[outcome_right_spot, outcome_wrong_spot]
    end 
    
end 