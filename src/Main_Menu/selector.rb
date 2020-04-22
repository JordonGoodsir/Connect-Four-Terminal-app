require 'colorize'
require 'io/console' 
require_relative 'board.rb'
 
array = ["        ","        ","        ","   x   ","        ","        ","        "] 
count = 3 

p array.join  
$board.each{ |each_board| puts each_board.join}
loop do
    case STDIN.getch() 
    when "q" 
       break 
    #"d" to go right through an array
    when "d" 
        count += 1  
        if count == 7 
            count -= 1 
        end
        past_position = count - 1
        array[past_position], array[count] = array[count], array[past_position]
        system("clear") 
        p count
        p array.join 
        $board.each{ |each_board| puts each_board.join} 
      
    #"a" to go left throught array
    when "a" 
    count -= 1  
    if count == -1 
        count += 1 
    end
        past_position_a = count + 1 
        array[past_position_a], array[count] = array[count], array[past_position_a]
        system("clear") 
        p count
        p array.join  
        $board.each{ |each_board| puts each_board.join}
    when "s" 
        puts "downs" 
    when "\r" 
        puts "enter"
    end
end 




