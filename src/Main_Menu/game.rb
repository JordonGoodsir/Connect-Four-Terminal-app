 class Game 
   
    @@player1_icon = "x".red 
    @@player2_icon = "o".yellow 
    @@turn_counter = 1 
    @@called0 = 0
    @@called1 = 0
    @@called2 = 0
    @@called3 = 0
    @@called4 = 0
    @@called5 = 0
    @@called6 = 0  
    @@selector_array = ["        ","        ","        ","    #{@@player1_icon}    ","        ","        ","        "] 
    @@game_over = false  
    $winner = 0
  
 
    def initialize(board) 
@board = board   
selector
    end 
    
def print_names  
if @@turn_counter.odd? 
  print "#{$player1_name}".red  
elsif 
  print "#{$player1_name}" 
end

if @@turn_counter.even?
  puts "#{$player2_name}".rjust(57 - $player2_name.length).yellow 
elsif  
  puts "#{$player2_name}".rjust(57 - $player2_name.length) 
end

end

def print_board     
  $board.each_with_index do |value, index| 
         
    value.each_with_index do |v, i| 
        case v 

        when "|" 
        $board[index][i] = "|".blue
            
        when "-" 
        $board[index][i] = "-".blue 
        end 
    end  
    puts value.join 

end 
end  

def format 
  system("clear")   
  print_names
  puts @@selector_array.join
  print_board  
end


def place_piece(called)  
  num = called * -2 + 14  
  num_values = called * -1 + 7 
  other_values = called * -1 + 7  
  
 if @@turn_counter.odd? 
    @piece = "   #{@@player1_icon}   " 
  elsif @@turn_counter.even?
    @piece = "   #{@@player2_icon}   " 
  end

  if num_values < 0 
    @@turn_counter -= 1
  end  
 
  if num > -1  
    $board[num][$count] = @piece 
end 
end 

#win registration

def diagonal_win_right 
  color_flash = [@piece.magenta, @piece.light_magenta, @piece.cyan, @piece.light_cyan, @piece.light_black]  
  flash = 0
  flash_times = 0
  $board.each_with_index do |value, index| 


  if (index.even? or index == 0)
          value.each_with_index do |v, i|   
          case v 
  
              
          when @piece     
              
               
              begin 
              if 
                  $board[index][i] == @piece and 
                  $board[index + 2 ][i + 2] == @piece and
                  $board[index + 4][i + 4] == @piece and
                  $board[index + 6][i + 6] == @piece    
                  loop do 
                        
                    format
  
                    $board[index][i] = color_flash[flash]
                    $board[index + 2][i +2] = color_flash[flash] 
                    $board[index + 4][i +4] = color_flash[flash] 
                    $board[index + 6][i +6] = color_flash[flash]  
  
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
                @@game_over = true
              end
            
                end   
              end
            rescue 
            end
    end   
  end
  end


#working
def diagonal_win_left 
  color_flash = [@piece.magenta, @piece.light_magenta, @piece.cyan, @piece.light_cyan, @piece.light_black]  
  flash = 0
  flash_times = 0
  true_count = 1
  $board.each_with_index do |value, index| 


  if (index.even? or index == 0)
          value.each_with_index do |v, i|   
          case v 
  
          when @piece     
           
              begin 
              if 
                  $board[index][i] == @piece and 
                  $board[index + 2 ][i -2] == @piece and
                  $board[index + 4][i - 4] == @piece and
                  $board[index + 6][i - 6] == @piece     
                  
                  loop do 
                        
                    format
  
                    $board[index][i] = color_flash[flash]
                    $board[index + 2][i -2] = color_flash[flash] 
                    $board[index + 4][i -4] = color_flash[flash] 
                    $board[index + 6][i -6] = color_flash[flash]  
  
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
                @@game_over = true
              end
            
                end   
              end
            rescue 
            end
    end   
  end
  end
  

#working :)
def horizontal_win  
color_flash = [@piece.magenta, @piece.light_magenta, @piece.cyan, @piece.light_cyan, @piece.light_black]  
flash = 0
flash_times = 0
true_count = 1
$board.each_with_index do |value, index| 
  
if (index.even? or index == 0) 
  value.each_with_index do |v, i|   
      case v 

      when @piece   
        begin 
          if 
              $board[index][i] == @piece and 
              $board[index][i + 2] == @piece and
              $board[index][i + 4] == @piece and
              $board[index][i + 6] == @piece     
              
              loop do 
                    
                format

                $board[index][i] = color_flash[flash]
                $board[index][i + 2] = color_flash[flash] 
                $board[index][i + 4] = color_flash[flash] 
                $board[index][i + 6] = color_flash[flash]  

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
            @@game_over = true
          end
        
            end   
          end
        rescue 
        end
end   
end
end


#working :))))
def vertical_win  
  color_flash = [@piece.magenta, @piece.light_magenta, @piece.cyan, @piece.light_cyan, @piece.light_black]  
  flash = 0
  flash_times = 0
  $board.each_with_index do |value, index| 
      
  if (index.even? or index == 0)  
      value.each_with_index do |v, i| 
          case v 

          when @piece 
              begin
              if $board[index][i] == @piece and
                 $board[index + 2][i] == @piece and
                 $board[index + 4][i] == @piece and
                 $board[index + 6][i] == @piece  
                 
                 loop do 
                        
                  format

                  $board[index][i] = color_flash[flash]
                  $board[index + 2][i] = color_flash[flash] 
                  $board[index + 4][i] = color_flash[flash] 
                  $board[index + 6][i] = color_flash[flash]  

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
              @@game_over = true
            end
          
              end   
            end
          rescue 
          end
  end   
end
end


def check_win 
  horizontal_win 
  vertical_win  
  diagonal_win_left   
  diagonal_win_right  

  if @@game_over  
    system("clear") 
    reset_board   
    victory   
  end 
end

    

#sets controls for selecting which coloumn player whishes to put piece in
    def selector   
        format
        $count = 3 
          
        loop do 
             
          case STDIN.getch() 
            #press q to quit whole program
            when "q" 
              system("clear") 
              reset_board 
              main_menu 
                
            
            #"d" to go right through an array (selector) 
            # works by adding index and swapping the player piece around in array with white spaces
            when "d"  
                
              $count += 1   

                past_position = $count - 1 
                
                if $count >= 6 or $count < 0 
                $count = 6 
                @@selector_array[past_position], @@selector_array[$count] = @@selector_array[$count], @@selector_array[past_position] 
                format 
                else 
                @@selector_array[past_position], @@selector_array[$count] = @@selector_array[$count], @@selector_array[past_position] 
                format 
                end
                 
              
            #"a" to go left throught array (selector)
            # works by adding index and swapping the player piece around in array with white spaces
            when "a" 
            $count -= 1  
            
                past_position_a = $count + 1 
                

                if $count <= 0 
                  $count = 0 
                  @@selector_array[past_position_a], @@selector_array[$count] = @@selector_array[$count], @@selector_array[past_position_a] 
                  format 
                  else 
                  @@selector_array[past_position_a], @@selector_array[$count] = @@selector_array[$count], @@selector_array[past_position_a] 
                  format 
                  end 

            when "\r"  
                #enter key
                
            case $count 
            
            when 0 
              $count += 1 
              @@called0 += 1  
              place_piece(@@called0)
            when 1 
              $count += 2 
              @@called1 += 1   
              place_piece(@@called1) 

            when 2 
              $count += 3  
              @@called2 += 1   
              place_piece(@@called2) 

            when 3 
              $count += 4   
              @@called3 += 1   
              place_piece(@@called3) 

           when 4 
              $count += 5  
              @@called4 += 1 
              place_piece(@@called4)  
                
               
            when 5 
              $count += 6  
              @@called5 += 1 
              place_piece(@@called5)
            
            when 6 
              $count += 7  
              @@called6 += 1  
              place_piece(@@called6)
            end  
            
          # puts win condition here  
          # check_win 

            @@turn_counter += 1 
            $winner += 1

                #changes players turn
                if @@turn_counter.odd?
                  @@selector_array = ["        ","        ","        ","    #{@@player1_icon}    ","        ","        ","        "] 
                elsif @@turn_counter.even?
                  @@selector_array = ["        ","        ","        ","    #{@@player2_icon}    ","        ","        ","        "]     
                end
                
                #resets piece to the middle of the board on a mechanical level
                if $count != 3 
                    $count = 3 
                end 
                format  
                check_win
        end  
    end    
end  
end 



