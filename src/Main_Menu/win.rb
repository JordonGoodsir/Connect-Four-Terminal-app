#This file is an unfinished feature, which has not been added to the main game as of yet.



$board1 = [ 
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"], 
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"],
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],   
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","   x   ","|"],
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","   x   ","|","   x   ","|","       ","|","       ","|","       ","|","       ","|","   x   ","|"],  
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],   
    ["|","   x   ","|","   x   ","|","       ","|","       ","|","       ","|","       ","|","   x   ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","   x   ","|","   x   ","|","       ","|","       ","|","       ","|","       ","|","   x   ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],  
]   


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


#not working
def vertical_win
    true_count = 1
    $board1.each_with_index do |value, index| 
        
    if (index.even? or index == 0) 
        value.each_with_index do |v, i|   
            case v 
            
            # when "       " 
            # true_count = 0
            
            when "   x   "    
            main_index_add = index + 2  
            
           
            
            #I only want it to add to the count if the index value is the same  

            #experiment 
            # i == same i 
            # and (i == )  
            
            if  (main_index_add <= 12 and $board1[main_index_add][i].include?("   x   ")) and i  
                
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

    #not working
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