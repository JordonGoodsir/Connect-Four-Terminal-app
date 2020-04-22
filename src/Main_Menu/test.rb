require 'colorize'
require 'io/console' 
require_relative 'board.rb'


class Game 
    @@player1_icon = "   x   "
    @@player2_icon = "   o   " 
    @@turn_counter = 0
    
    
    
    # @@array = ["        ","        ","        ","#{@@player2_icon}","        ","        ","        "]  
    
   
    def initialize(board) 
@board = board 
print_selector 
print_board
selector
    end  

def turn_count 
if @@turn_counter.odd?
        @@array = ["        ","        ","        ","#{@@player1_icon}","        ","        ","        "] 
    elsif @@turn_counter.even?
        @@array = ["        ","        ","        ","#{@@player2_icon}","        ","        ","        "]  
    end  
end


def print_board 
$board.each{ |each_board| puts each_board.join} 
end  

def print_selector 
p turn_count.join
end

def next_turn 

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
                turn_count[past_position], turn_count[count] = turn_count[count], turn_count[past_position]
                system("clear") 
                p count
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
                p count 
                print_board 
            
            when "\r" 
                #enter key
                #future - make it so that this changes turn to next player 
                # p count  

                @@turn_counter += 1 
                p @@turn_counter
            end
        end  
    end 
end
game = Game.new($board)

         
