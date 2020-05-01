#This file is an unfinished feature, which has not been added to the main game as of yet.
require 'colorize'
$game_over = false 

$board1 = [ 
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"], 
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"],
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],   
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","        ","|","       ","|"],
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","       ","|","       ","|","   x   ","|","   x   ","|","   x   ","|","       ","|","       ","|"],  
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],   
    ["|","       ","|","   x   ","|","   x   ","|","   x   ","|","       ","|","   x   ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","   x   ","|","   x   ","|","       ","|","       ","|","       ","|","       ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],  
]   


def diagonal_win_right
    true_count = 1
    $board1.each_with_index do |value, index| 
 

    if (index.even? or index == 0)
            value.each_with_index do |v, i|   
            case v 
    
                
            when "   x   "     
                
                 
                begin 
                if 
                    $board1[index][i] == "   x   " and 
                    $board1[index + 2 ][i + 2] == "   x   " and
				    $board1[index + 4][i + 4] == "   x   " and
                    $board1[index + 6][i + 6] == "   x   "     
                        $game_over = true 
                end
            rescue 
            end
        end
        
        end
    
    end
    end 
    end  


#working
def diagonal_win_left
    true_count = 1
    $board1.each_with_index do |value, index| 
 

    if (index.even? or index == 0)
            value.each_with_index do |v, i|   
            case v 
    
                
            when "   x   "     
             
                begin 
                if 
                    $board1[index][i] == "   x   " and 
                    $board1[index + 2 ][i -2] == "   x   " and
				    $board1[index + 4][i - 4] == "   x   " and
                    $board1[index + 6][i - 6] == "   x   "     
                        $game_over = true
                end
            rescue 
            end
        end
        
        end
    
    end
    end 
    end  
    

#working :)
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

        elsif true_count >= 4 
            $game_over = true 
            
        else  
            true_count = 1 
        end 
          
        end
    end

end
end 
end 


#working :))))
def vertical_win  
    normal_board = []
    true_count = 1
    $board1.each_with_index do |value, index| 
        
    if (index.even? or index == 0)  
        value.each_with_index do |v, i| 
            case v 

            when "   x   " 
                begin
                if $board1[index][i] == "   x   " and
				    $board1[index + 2][i] == "   x   " and
				      $board1[index + 4][i] == "   x   " and
                        $board1[index + 6][i] == "   x   " 
     
                        $game_over = true  
                end 
            rescue 
            end
    end   
end
end
end
end



# puts "    x    ".red
     
selector_array = ["        ","        ","        ","    #{@@player1_icon}    ","        ","        ","        "] 

selector_array[3]
# horizontal_win 
# vertical_win  
# diagonal_win_left   
# diagonal_win_right 

# puts $game_over