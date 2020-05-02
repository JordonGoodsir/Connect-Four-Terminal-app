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
    ["|","       ","|","   x   ","|","       ","|","   x   ","|","       ","|","       ","|","       ","|"],
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","       ","|","   x   ","|","   x   ","|","       ","|","   x   ","|","       ","|","       ","|"],  
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],   
    ["|","       ","|","   x   ","|","   x   ","|","       ","|","       ","|","   x   ","|","       ","|"], 
    ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],    
    ["|","   x   ","|","   x   ","|","   x   ","|","   x   ","|","       ","|","       ","|","   x   ","|"], 
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
    color_flash = ["   x   ".light_red,"   x   ".light_yellow,"   x   ".light_magenta,"   x   ".light_cyan,"   x   ".light_blue]  
    flash = 0
    flash_times = 0
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
                    
                    loop do 
                        
                        $board1.each {|h| puts h.join}

                        $board1[index][i] = color_flash[flash]
        
                        $board1[index + 2][i -2] = color_flash[flash] 
                
                        $board1[index + 4][i -4] = color_flash[flash] 
                
                        $board1[index + 6][i -6] = color_flash[flash]  

                        flash +=1 

                        if flash >= 4 
                            flash = 0 
                            flash_times +=1  
                        elsif flash_times >= 2 
                            break 
                        end 
                    
                        sleep 0.5
                        system("clear")
                    
                    end
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
    color_flash = ["   x   ".light_red,"   x   ".light_yellow,"   x   ".light_magenta,"   x   ".light_cyan,"   x   ".light_blue]  
    flash = 0
    flash_times = 0
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
                    
                        loop do 
                        
                        $board1.each {|h| puts h.join}

                        $board1[index][i] = color_flash[flash]
        
                        $board1[index + 2][i] = color_flash[flash] 
                
                        $board1[index + 4][i] = color_flash[flash] 
                
                        $board1[index + 6][i] = color_flash[flash]  

                        flash +=1 

                        if flash >= 4 
                            flash = 0 
                            flash_times +=1  
                        elsif flash_times >= 2 
                            break 
                        end 
                    
                        sleep 0.5
                        system("clear")
                    
                    end
                
                    end
    
                        $game_over = true         
                end  
            end
            rescue 
            end
    end  
    
end 
  
end  




     
# horizontal_win 
# vertical_win  
diagonal_win_left   
# diagonal_win_right 

puts $game_over

 


# i have to have the coordinates of all 4 winner objects  

# $board1[index][i] 
# $board1[index + 2][i] 
# $board1[index + 4][i] 
# $board1[index + 6][i]

# then i have to have an array of colorized pieces  

#colorize all winner objects simultaniously 













#


# loop do 

# puts color_flash[flash] 
# flash += 1

# if flash >= 3 
#     flash = 0 
#     flash_times +=1  

# elsif flash_times >= 4 
#     break 
# end

# sleep 0.5
# system("clear")

# end