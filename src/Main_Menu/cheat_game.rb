# require 'colorize'
# require 'io/console' 
# require_relative 'board.rb' 



class Game 
    @@player1_icon = "   x   "
    @@player2_icon = "   o   " 
    @@turn_counter = 1 
    @@called0 = 0
    @@called1 = 0
    @@called2 = 0
    @@called3 = 0
    @@called4 = 0
    @@called5 = 0
    @@called6 = 0 
  
 
    def initialize(board) 
@board = board 
print_names  
dummy_array
print_board
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
$board.each{ |each_board| puts each_board.join}
end  

# def format 
#   system("clear")   
#   print_names
#   p array.join
#   print_board 
# end

def dummy_array 
@dummy = ["        ","        ","        ","#{@@player1_icon}","        ","        ","        "]   
p @dummy.join
end 

def place_piece(called)  
  num = called * -2 + 14  
  num_values = called * -1 + 7 
  other_values = called * -1 + 7  
  
 if @@turn_counter.odd? 
    piece = "   x   " 
  elsif @@turn_counter.even?
    piece = "   o   " 
  end

  if num_values < 0 
    @@turn_counter -= 1
  end  
 
  if num > -1  
    $board[num][$count] = piece 
end 
end
    

#sets controls for selecting which coloumn player whishes to put piece in
    def selector   
        $count = 3 
        array = ["        ","        ","        ","#{@@player1_icon}","        ","        ","        "]  
        
        loop do 
             
          case STDIN.getch() 
            #press q to quit whole program
            when "q" 
               break 
            
            #"d" to go right through an array (selector) 
            # works by adding index and swapping the player piece around in array with white spaces
            when "d"  
                
              $count += 1   

                if $count == 7 
                    $count -= 1 
                end
                past_position = $count - 1
                array[past_position], array[$count] = array[$count], array[past_position] 
                system("clear")
                print_names
                p array.join
                print_board 
                 
              
            #"a" to go left throught array (selector)
            # works by adding index and swapping the player piece around in array with white spaces
            when "a" 
            $count -= 1  
            if $count == -1 
                $count += 1 
            end
                past_position_a = $count + 1 
                array[past_position_a], array[$count] = array[$count], array[past_position_a] 
                system("clear")   
                print_names
                p array.join
                print_board  

            when "w" 
            victory
            
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
            

            @@turn_counter += 1

                #changes players turn
                if @@turn_counter.odd?
                  array = ["        ","        ","        ","#{@@player1_icon}","        ","        ","        "] 
                elsif @@turn_counter.even?
                  array = ["        ","        ","        ","#{@@player2_icon}","        ","        ","        "]     
                end
                
                #resets piece to the middle of the board on a mechanical level
                if $count != 3 
                    $count = 3 
                end 
                
                #resets the peice to the middle of the board on a visual level
                system("clear")  
                print_names
                p array.join   
                print_board  
                # format
        end  
    end 
end 
end
