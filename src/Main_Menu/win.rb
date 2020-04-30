#This file is an unfinished feature, which has not been added to the main game as of yet.



$board1 = [ 
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"], 
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"],
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],   
    ["|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","   x   ","|","   x   ","|","   x   ","|","       ","|","       ","|","       ","|","       ","|"],
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","   x   ","|","   x   ","|","   x   ","|","       ","|","       ","|","   x   ","|","       ","|"],  
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],   
    ["|","   x   ","|","   x   ","|","   x   ","|","       ","|","       ","|","   x   ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","   x   ","|","   x   ","|","   x   ","|","       ","|","       ","|","   x   ","|","       ","|"], 
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


#working :))))
def vertical_win 
    normal_board = []
    true_count = 1
    $board1.each_with_index do |value, index| 
        
    if (index.even? or index == 0)  
            normal_board.push(value) 
    end  
end
  
normal_board.transpose.each {|row_v|  

row_v.each_cons(1).any? { |x,y,z,w|  
    
    
    true_or_false = x == "   x   " and y == "   x   " and z == "   x   " and w == "   x   "
    
    case true_or_false 

    when true 
     true_count += 1 
     if true_count >= 4  
        puts "I HECKING DID IT" 
     end
    
    when false 
    true_count = 0  
    puts "fail"
    # # puts count
    end
}
} 
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

