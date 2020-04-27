$board1 = [ 
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"], 
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"],
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],   
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"],
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","       ","|","       ","|","       ","|","   x   ","|","       ","|","       ","|","       ","|"],  
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],   
    ["|","   x   ","|","       ","|","       ","|","   x   ","|","       ","|","       ","|","   x   ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","   x   ","|","       ","|","       ","|","   x   ","|","       ","|","       ","|","   x   ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],  
]   



def horizontal_win
true_count = 1
$board1.each_with_index do |value, index| 
    
if (index.even? or index == 0) 
    value.each_with_index do |v, i|   
        case v 

        when "   x   "   
        
        # adds 2 to the index to check the next avaliable slot for player    
        add = i + 2
        
        
        if  add <= 13 and $board1[index][add].include?("   x   ")
            true_count += 1 
            puts true_count    

        elsif true_count >= 4 
            puts "HORIZONTAL VICTORY" 

        else  
            true_count = 1 
            puts "FAILURE"
        end 
          
        end
    end

end
end 
end 

def vertical_win
    true_count = 1
    $board1.each_with_index do |value, index| 
        
    if (index.even? or index == 0) 
        value.each_with_index do |v, i|   
            case v 
    
            when "   x   "   
            main_index_add = index + 2   
           
            
            #i also only want it to add to the count if the index value is the same  

            #experiment 
            # i == same i 
            # and (i == ) 

            if  main_index_add <= 12 and $board1[main_index_add][i].include?("   x   ") 
                index += 2  
                true_count += 1 
                puts "#{i} and  #{index}"
                puts "true count = #{true_count}"    
    
            elsif true_count >= 4 
                puts "VERTICAL VICTORY" 
    
            else  
                true_count = 1 
                puts "FAILURE"
            end 
              
            end
        end
    
    end
    end 
    end  

    def diagonal_win
        true_count = 1
        $board1.each_with_index do |value, index| 
            
        if (index.even? or index == 0) 
            value.each_with_index do |v, i|   
                case v 
        
                when "   x   "   
           
                    diagonal_index = index + 2
                    diagonal_i = i + 2  
    
    
                if  (diagonal_i <= 13 and diagonal_index <= 12)  and $board1[diagonal_index][diagonal_i].include?("   x   ")
                    true_count += 1 
                    puts "#{i} and  #{index}"
                    puts "true count = #{true_count}"    
        
                elsif true_count >= 4 
                    puts "DIAGONAL VICTORY" 
        
                else  
                    true_count = 1 
                    puts "FAILURE"
                end 
                  
                end
            end
        
        end
        end 
        end 

# horizontal_win 
vertical_win  
# diagonal_win

# line 1 
# 1, 3, 5, 7, 9, 11, 13
    
    
# def vertical_win?
#     times_in_a_row = 0
#     @board.rows.each do |row|
#       if row[(column.ord - 65)].player == @player
#         times_in_a_row += 1
#       else
#         times_in_a_row = 0
#       end
#       return true if times_in_a_row == 4
#     end
#     false
#   end

#   def horizontal_win?
#     times_in_a_row = 0
#     @board.rows[@move_row].each do |space|
#       if space.player == @player
#         times_in_a_row += 1
#       else
#         times_in_a_row = 0
#       end
#       return true if times_in_a_row == 4
#     end
#     false
#   end

#   def diagonal_win?
#     diagonal = []
#     #down_right
#     diagonal[0] = [[@move_row+1, (@column.ord - 65)+1], [@move_row+2, (@column.ord - 65)+2], [@move_row+3, (@column.ord - 65)+3]]
#     #up_right
#     diagonal[1] = [[@move_row-1, (@column.ord - 65)+1], [@move_row-2, (@column.ord - 65)+2], [@move_row-3, (@column.ord - 65)+3]]
#     #up_left
#     diagonal[2] = [[@move_row-1, (@column.ord - 65)-1], [@move_row-2, (@column.ord - 65)-2], [@move_row-3, (@column.ord - 65)-3]]
#      #down_left
#     diagonal[3] = [[@move_row+1, (@column.ord - 65)-1], [@move_row+2, (@column.ord - 65)-2], [@move_row+3, (@column.ord - 65)-3]]
#     diagonal.each do |line|
#       times_in_a_row = 1
#       line.each do |point|
#         if !@board.rows[point[0]].nil? && !@board.rows[point[0]][point[1]].nil? && @board.rows[point[0]][point[1]].player == @player
#           times_in_a_row += 1
#         else
#           times_in_a_row = 1
#         end
#         return true if times_in_a_row == 4
#       end
#     end
#     false
#   end
