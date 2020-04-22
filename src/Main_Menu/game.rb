require 'colorize'
require 'io/console' 
require_relative 'board.rb'


class Game 
    @@array = ["        ","        ","        ","   x   ","        ","        ","        "]
    
    def initialize(board) 
@board = board 
print_board
selector
    end 


def print_board    
p @@array.join 
$board.each{ |each_board| puts each_board.join}
end
    

#sets controls for selecting which coloumn player whishes to put piece in
    def selector   
        count = 3
        loop do
            case STDIN.getch() 
            #press q to quit whole program
            when "q" 
               break 
            
            #"d" to go right through an array (selector) 
            # works by adding index and swapping the player piece around in array with white spaces
            when "d"  
                count += 1  
                if count == 7 
                    count -= 1 
                end
                past_position = count - 1
                @@array[past_position], @@array[count] = @@array[count], @@array[past_position]
                system("clear") 
                print_board 
              
            #"a" to go left throught array (selector)
            # works by adding index and swapping the player piece around in array with white spaces
            when "a" 
            count -= 1  
            if count == -1 
                count += 1 
            end
                past_position_a = count + 1 
                @@array[past_position_a], @@array[count] = @@array[count], @@array[past_position_a]
                system("clear") 
                print_board
            
            when "s" 
                puts "downs" 
            
            when "\r" 
                puts "enter"
            end
        end  
    end 
end
game = Game.new($board)