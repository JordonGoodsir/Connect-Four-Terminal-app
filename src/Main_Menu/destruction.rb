require 'colorize'
require 'io/console' 
require_relative 'board.rb'


class Game 
    @@player1_icon = "   x   "
    @@player2_icon = "   o   " 
    @@turn_counter = 0
  
 
    def initialize(board) 
@board = board 
dummy_array
print_board
selector
    end 


def print_board    
# p @@array.join 
$board.each{ |each_board| puts each_board.join}
end  



def dummy_array 
@dummy = ["        ","        ","        ","#{@@player1_icon}","        ","        ","        "] 
p @dummy.join
end
    
# og concept
# def place_value (count, index, odd/even(@@turn_counter)) 
def place_value(num_values, other_values, vertical_num) 
    if @@turn_counter.odd? 
        piece = "   x   " 
    elsif @@turn_counter.even?
        piece = "   o   " 
    end
    
    if other_values == num_values  
    $board[vertical_num][@count] = piece 
    vertical_num -= 2 
    other_values -= 1 
end 

num_values -= 1  
p num_values 
p other_values 
p vertical_num
end  

# num_values = 7 
#         other_values = 7
#         vertical_num = 12 

# if other_values == num_values  
#     $board[vertical_num][count] = "   x   " 
#     vertical_num -= 2 
#     other_values -= 1 
# end 

# num_values -= 1  

# new ajustment, full reset count to 3
# if num_values == -1 
#     break 
# end

#sets controls for selecting which coloumn player whishes to put piece in
    def selector   
        @count = 3 
        array = ["        ","        ","        ","#{@@player1_icon}","        ","        ","        "] 
        
        # num_values = 7 
        # other_values = 7
        # vertical_num = 12 
     
        loop do 
            case STDIN.getch() 
            #press q to quit whole program
            when "q" 
               break 
            
            #"d" to go right through an array (selector) 
            # works by adding index and swapping the player piece around in array with white spaces
            when "d"  
                @count += 1   

                if @count == 7 
                    @count -= 1 
                end
                past_position = @count - 1
                array[past_position], array[@count] = array[@count], array[past_position] 
                system("clear")
                p array.join
                print_board 
                 
              
            #"a" to go left throught array (selector)
            # works by adding index and swapping the player piece around in array with white spaces
            
            when "a" 
            @count -= 1  
            if @count == -1 
                @count += 1 
            end
                past_position_a = @count + 1 
                array[past_position_a], array[@count] = array[@count], array[past_position_a] 
                system("clear")   
                p array.join
                print_board  
        
        when "w"
            
        when "\r" 
                #enter key
                #future - make it so that this changes turn to next player 
                # p count  

            @@turn_counter += 1 
             

            case @count 
            when 0 
              @count += 1 
              place_value(7, 7, 12)  
            when 1 
              @count += 2 
              place_value(7, 7, 12)  
            when 2 
              @count += 3 
              place_value(7, 7, 12)   
            when 3 
              @count += 4 
              place_value(7, 7, 12)  
           when 4 
              @count += 5 
              place_value(7, 7, 12)  
            when 5 
              @count += 6 
              place_value(7, 7, 12)  
            when 6 
              @count += 7 
              place_value(7, 7, 12)   

            end  
                
            # if other_values == num_values  
            #     $board[vertical_num][count] = "   x   " 
            #     vertical_num -= 2 
            #     other_values -= 1 
            # end 
            
            # num_values -= 1  
            
            # # new ajustment, full reset count to 3
            # if num_values == -1 
            #     break 
            # end

                #changes players turn
                if @@turn_counter.odd?
                  array = ["        ","        ","        ","#{@@player1_icon}","        ","        ","        "] 
                elsif @@turn_counter.even?
                  array = ["        ","        ","        ","#{@@player2_icon}","        ","        ","        "]     
                end
                
                #resets piece to the middle of the board on a mechanical level
                if @count != 3 
                    @count = 3 
                end 
                
                #resets the peice to the middle of the board on a visual level
                system("clear")  
                p array.join
                print_board 
             
        end  
    end 
end 
end
game = Game.new($board)