# require_relative "board.rb"

# class Player
#   def collect_guess
#     #loop until you have a valid guess
    
#     #prompt the user for four colors separated by commas
    
#     #convert to an array, splitting on the commas
    
#     #if there aren't four entries, give the user an error message
#     #and do a next in the loop to prompt again
    
#     #strip white space from each member of the array and
#     #convert to lower case.  You will use the map!, strip, and
#     #downcase methods.
    
#     #make sure that each member of the array is a member of
#     #the Board::Colors array.  If all colors are valid, return
#     #the array
  
#   end
# end

class Player 
    attr_accessor :guess
    
    # first attempt
    # def user_input 
    #     colors_array  = []
    #     4.times do |i|
    #         puts "Enter color #{i+1}: "
    #         user_input = gets.chomp
    #         colors_array << user_input
    #     end 
    # end 
    
    def collect_guess
        
        @guess  = []
        user_input = " "
        until @guess.length == 4 do 
            puts "Enter a color: "
            user_input = gets.chomp
            if (user_input == "")
                puts "You must enter a color."
                next  
            end 
            @guess << user_input.downcase
        end 
        
        return @guess
        
    end 
 
  
    
end 

