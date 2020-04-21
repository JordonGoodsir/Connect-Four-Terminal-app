require 'io/console'

# to do, 
# make sure that the index number does not go over the max length or below

array = ["      ", "      ", "     ","   x   ", "     ", "      ","      "]
# array = [" "," "," ","x"," "," "," "]
count = 3
p array
loop do
    # p array 
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
        p array  
      
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
        p array
    when "s" 
        puts "downs"
    end
end

